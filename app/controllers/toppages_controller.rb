class ToppagesController < ApplicationController
  
  def index
    @items = Item.all
    @mytools = ItemList.where(user_id: session[:user_id]).recent
  end
end
