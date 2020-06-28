class ItemsController < ApplicationController
  before_action :require_user_logged_in

  def index
    @items = Item.all
  end

  def show 
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = current_user.items.build(item_params)
    
    if @item.save
      flash[:success] = 'tool を投稿しました。'
      redirect_to items_path
    else
      flash.now[:danger] = 'tool が投稿されませんでした'
      render :new
    end

  end

  def destroy
  end

  private
  def item_params
    # binding.pry
    params.require(:item).permit(:item_name)
  end

end