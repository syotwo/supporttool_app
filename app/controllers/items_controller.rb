class ItemsController < ApplicationController
  before_action :require_user_logged_in

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    redirect_to root_path

    # if @item.save
    #   redirect_to items_path
    # else
    #   render action: :new
    # end

  end

  def destroy
  end

  private
  def item_params
    # binding.pry
    params.require(:item).permit(:item_name)
  end

end