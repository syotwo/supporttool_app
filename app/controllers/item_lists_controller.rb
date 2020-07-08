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
    @item_list = current_user.item_lists.build(item_list_params)

    if @item_list.save
      redirect_to item_lists_path
    else
      render :new
    end
  end

  def destroy
  end

  private

  # Strong Parameter
  def item_list_params
    params.require(:item_list).permit(:list_name)
  end

# binding.pry
end

