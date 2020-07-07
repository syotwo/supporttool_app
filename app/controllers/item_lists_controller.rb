class ItemListsController < ApplicationController
  # before_action :require_user_logged_in [:create]

  def index
    @item_lists = current_user.item_lists.all
  end

  def show
  end

  def new
    @item_list = ItemList.new
  end

  def create
  end

  def destroy
  end
end

# binding.pry