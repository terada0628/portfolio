class HomesController < ApplicationController
  def top
    @genres = Genre.all
    @favorite_item = Item.all
  end

  def about
  end
end
