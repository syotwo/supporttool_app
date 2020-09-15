class ToppagesController < ApplicationController
  
  def index
     @item_lists = ItemList.all.order(created_at: :desc)
     @goodsleepsets = ItemList.where('list_name like ? or list_name like ?','%Sleep%','%ベッド%')
     @mysets = ItemList.where(user_id: session[:user_id])
     
    #  binding.pry
  end
end
