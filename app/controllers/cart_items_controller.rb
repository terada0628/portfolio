class CartItemsController < ApplicationController
  def index
    @cart_items = current_customer.cart_items.all

    # カートの商品全ての合計金額
    @total_price = @cart_items.inject(0){|sum, item| sum + item.sub_total_price}
  end

  def update
    @cart_item = CartItem.find(params[:id])
    @cart_item.update(amount: params[:amount].to_i)
    redirect_to cart_items_path
  end

  def destroy
    cart_item = CartItem.find(params[:id])
    cart_item.destroy
    redirect_to cart_items_path
  end

  def all_destroy
    cart_items = current_customer.cart_items.all
    cart_items.destroy_all
    redirect_to cart_items_path
  end

  def create
    @cart_item = CartItem.new(cart_item_params)
    @cart_item.customer_id = current_customer.id
    @cart_items = current_customer.cart_items.all
    if @cart_items.exists?(item_id: @cart_item.item_id)
        @cart_items.each do |cart_item|
            if cart_item.item.id == @cart_item.item_id
              sum_of_amount = cart_item.amount + @cart_item.amount
              cart_item.update_attribute(:amount, sum_of_amount)
              @cart_item.delete
            end
        end

    end

    @cart_item.save
    redirect_to cart_items_path

  end


  private

  def cart_item_params
    params.require(:cart_item).permit(:customer_id, :item_id, :amount)
  end

end
