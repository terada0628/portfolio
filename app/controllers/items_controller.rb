class ItemsController < ApplicationController
  def index
    @genres = Genre.all
    @all_ranks = Item.find(Favorite.group(:item_id).order('count(item_id) desc').limit(3).pluck(:item_id))
    @items = Item.page(params[:page]).per(12)
  end

  def show
    @genres = Genre.all
    @all_ranks = Item.find(Favorite.group(:item_id).order('count(item_id) desc').limit(3).pluck(:item_id))

    @item = Item.find(params[:id])
    @cart_item = CartItem.new
  end

  private

  def item_params
    params.require(:item).permit(:name, :image_id, :introduction, :price, :is_active)
  end
end
