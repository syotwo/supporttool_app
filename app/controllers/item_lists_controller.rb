class ItemListsController < ApplicationController
    
  def index
    @item_lists = current_user.item_lists.all

  end

  def show
  end

  def new
  end

  def create
  end

  def destroy
  end
end
