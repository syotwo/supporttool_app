class ItemsController < ApplicationController
  before_action :require_user_logged_in, only: [:create]
  before_action :set_item, only: %i[edit update destroy]

  def index
    @items = Item.all if logged_in?
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    # @item = current_user.items.build(item_params)
    # 本来の記述である@item = current_user.items.build(params[:user])だとrails4から適応のstrong paramsでエラー
    # binding.pry
    @item = Item.new(item_params)
    @item.user_id = current_user.id

    if @item.save
      flash[:success] = 'productを投稿しました。'
      redirect_back(fallback_location: root_path)
    else
      flash.now[:danger] = 'productが投稿されませんでした'
      redirect_back(fallback_location: root_path)
    end
  end

  def edit; end

  def update
    if @item.update(item_params)
      redirect_to @item
    else
      render :edit
    end
  end

  def destroy
    # before_action :correct_user
    @item.destroy

    redirect_back(fallback_location: item_list_items_path)
  end

  private

  # ストロングパラメーター
  def item_params
    params.require(:item).permit(:item_list_id, :item_name, :img, :item_link)
  end

  def set_item
    @item = Item.find(params[:id])
  end
end

# binding.pry
