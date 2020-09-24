class ToppagesController < ApplicationController
  
  def index
     @item_lists = ItemList.all.order(created_at: :desc)
     @sleepsets = ItemList.where('list_name like ? or list_name like ?','%Sleep%','%ベッド%')
     @mysets = ItemList.where(user_id: session[:user_id]).order(created_at: :desc)
     @creativesets = ItemList.where('list_name like ? or list_name like ?','%Creative%','%クリエイティブ%')
     
    #  binding.pry
  end
end
