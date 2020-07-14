class ItemListsController < ApplicationController
  before_action :require_user_logged_in, only: [:create]
  before_action :correct_user, only: [:edit, :update, :destroy]


  def index
    @item_lists = current_user.item_lists.all
  end

  def show
    @item_list = ItemList.find(params[:id])
  end

  def new
    @item_list = ItemList.new
  end

  def create
    @item_list = current_user.item_lists.build(item_list_params)

    if @item_list.save
      flash[:success] = 'Support-Kitを投稿しました'
      redirect_to item_lists_path
    else
      flash.now[:danger] = 'Support-Kitを投稿に失敗しました。'
      render :new
    end
  end

  def edit
  end

  def update
    if @item_list.update(item_list_params)
      redirect_to @item_list
    else
      render :edit
    end
  end

  def destroy
    @item_list.destroy
    flash[:success] = 'Support-Kitを削除しました'
    redirect_to item_lists_path
  end

  private

  # Strong Parameter
  def item_list_params
    params.require(:item_list).permit(:list_name, :image)
  end

  def correct_user
    @item_list = current_user.item_lists.find_by(id: params[:id])
    unless @item_list
      redirect_to root_url
    end
  end

# binding.pry
end

