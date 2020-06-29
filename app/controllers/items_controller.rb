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
    #本来の記述である@item = current_user.items.build(params[:user])だとrails4から適応のstrong paramsでエラー
    
    if @item.save
      flash[:success] = 'tool を投稿しました。'
      redirect_to items_path
    else
      flash.now[:danger] = 'tool が投稿されませんでした'
      render :new
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to @item
    else
      render :edit
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