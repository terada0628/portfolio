class SearchController < ApplicationController

  def search
    @genres = Genre.all
    @all_ranks = Item.find(Favorite.group(:item_id).order('count(item_id) desc').limit(3).pluck(:item_id))
    @value = params["search"]["value"]        #データを代入
    @how = params["search"]["how"]            #検索方法を代入
    @datas = search_for(@how, @value).page(params[:page]).per(12)         #def search_forを実行(引数に検索ワードと検索法)
  end


  private

  def match(value)
    # .orを使用することで、valueに一致するカラムのデータをnameカラムとgenre_idカラムから探してきます。
    Item.where(name: value).or(Item.where(genre_id: value))
  end

  def forward(value)                          #forward以降はジャンル検索のorは作らずに記述
    Item.where("name LIKE ?", "#{value}%")
  end

  def backward(value)
    Item.where("name LIKE ?", "%#{value}")
  end

  def partical(value)
    Item.where("name LIKE ?", "%#{value}%")
  end

  def search_for(how, value)
    case how                     #引数のhowと一致する処理に進むように定義しています。
    when 'match'                 #ジャンル検索の場合はmatchで固定してるので、必ず'match'の処理に進みます。
      match(value)
    when 'forward'
      forward(value)
    when 'backward'
      backward(value)
    when 'partical'
      partical(value)
    end
  end


end
