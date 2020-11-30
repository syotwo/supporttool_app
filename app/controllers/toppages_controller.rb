class ToppagesController < ApplicationController
  
  def index
     @item_lists = ItemList.all.order(created_at: :desc)
     @brainkit = ItemList.where('list_name like ? or list_name like ?','%brain%','%脳%')
     @sleepkit = ItemList.where('list_name like ? or list_name like ?','%Sleep%','%ベッド%')
     @mykit = ItemList.where(user_id: session[:user_id])
     @creativekit = ItemList.where('list_name like ? or list_name like ?','%Creative%','%クリエイティブ%')
     @creativekit = ItemList.where('list_name like ? or list_name like ?','%Creative%','%クリエイティブ%')
     
    #  binding.pry
  end
end
