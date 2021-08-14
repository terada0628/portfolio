class OrdersController < ApplicationController

  def new
    @order = Order.new
    @customer = current_customer

    # カートに商品がなければnewページに遷移
    cart_items = current_customer.cart_items
    if cart_items.empty?
      redirect_to cart_items_path
    end

  end

  def confirm
    @cart_items = current_customer.cart_items
    @order = Order.new
    @ship_cost = 800

    # 商品全体の合計金額
    @total_price = @cart_items.inject(0){|sum, item| sum + item.sub_total_price}

    @total_payment = @total_price + @ship_cost

    @order.payment_method = params[:order][:payment_method]
    @order.delivery_day = params[:order][:delivery_day]
    @order.delivery_time = params[:order][:delivery_time]
    shipping = params[:order][:shipping].to_i
    case shipping

    when 1
      @order.postal_code = current_customer.postal_code
      @order.address = current_customer.address
      @order.name = current_customer.family_name + current_customer.first_name

    when 2
      @order.postal_code = params[:order][:postal_code]
      @order.address = params[:order][:address]
      @order.name =params[:order][:name]
    end

  end

  def complete
  end

  def create
    @order = Order.new(order_params)
    @order.customer_id = current_customer.id
    @order.save

    # 注文商品テーブル作成
    current_customer.cart_items.each do |cart_item|
      order_detail = @order.order_details.new
      order_detail.order_id = @order.id
      order_detail.item_id = cart_item.item_id
      order_detail.price = cart_item.item.price
      order_detail.amount = cart_item.amount
      order_detail.save
      cart_item.destroy
    end
    render :complete

  end

  def index
    @orders = current_customer.orders.order(delivery_day: :DESC)
  end

  def show
    @order = Order.find(params[:id])
  end


  private

  def order_params
    params.require(:order).permit(:name, :customer_id, :postal_code, :address, :delivery_day, :delivery_time, :shipping_cost, :total_payment, :payment_method, :status)
    # order_details_attributes:[:order_id, :item_id, :amount, :price])
  end

end
