class ToppagesController < ApplicationController
  
  def index
    @item_lists = ItemList.all
    @mytools = ItemList.where(user_id: session[:user_id]).recent
  end
end
