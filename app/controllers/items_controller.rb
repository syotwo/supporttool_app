class ItemsController < ApplicationController
  before_action :require_user_logged_in, only: [:create]
  # before_action :correct_user, only: [:edit, :update, :destroy]

  def index
    if logged_in?
      @items = Item.all
    end
  end

  def show 
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    # @item = current_user.items.build(item_params)
    #本来の記述である@item = current_user.items.build(params[:user])だとrails4から適応のstrong paramsでエラー
    binding.pry
    @item = @item_list.items.new(item_params)
    
    if @item.save
      flash[:success] = 'tool を投稿しました。'
      redirect_to items_path
    else
      flash.now[:danger] = 'tool が投稿されませんでした'
      render :new
    end
   
  end

  def edit
  end

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

    redirect_to items_url
  end

  private
  # ストロングパラメーター
  def item_params
    params.require(:item).permit(:item_name, :img, :user_id)
  end

  # def correct_user
  #   @item = current_user.items.find_by(id: params[:id])
  #   unless @item
  #     redirect_to root_url
  #   end
  # end

end

# binding.pry