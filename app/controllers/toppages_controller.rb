class ToppagesController < ApplicationController
  
  def index
    @item_lists = ItemList.all
  end
end
