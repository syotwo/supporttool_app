class ToppagesController < ApplicationController
  
  def index
     @item_lists = ItemList.all.order(created_at: :desc)
     @brainsets = ItemList.where('list_name like ? or list_name like ?','%brain%','%脳%')
     @bodysets = ItemList.where('list_name like ? or list_name like ?','%body%','%体%')
     @mindsets = ItemList.where('list_name like ? or list_name like ?','%mid%','%心%')
     @sleepsets = ItemList.where('list_name like ? or list_name like ?','%Sleep%','%ベッド%')
     @mysets = ItemList.where(user_id: session[:user_id])
     @creativesets = ItemList.where('list_name like ? or list_name like ?','%Creative%','%クリエイティブ%')
     
    #  binding.pry
  end
end
