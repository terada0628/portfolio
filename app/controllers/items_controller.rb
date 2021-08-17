class ItemsController < ApplicationController
  def index
    @genres = Genre.all
    @favorite_item = Item.all
    @items = Item.all
    # @favorite = Favorite.where(customer_id: current_customer.id)
  end

  def show
    @genres = Genre.all
    @favorite_item = Item.all

    @item = Item.find(params[:id])
    @cart_item = CartItem.new
  end

  private

  def item_params
    params.require(:item).permit(:name, :image_id, :introduction, :price, :is_active)
  end

end
