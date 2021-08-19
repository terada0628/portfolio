class HomesController < ApplicationController
  def top
    @genres = Genre.all
    @all_ranks = Item.find(Favorite.group(:item_id).order('count(item_id) desc').limit(3).pluck(:item_id))
  end

  def about
  end
end
