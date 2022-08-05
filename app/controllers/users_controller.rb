class UsersController < ApplicationController
  before_action :require_user_logged_in, only: [:show]
  
  def index
    # @item_lists = ItemList.all.order(created_at: :desc)

    @categories = Category.all
    @item_list = ItemList.includes(:categories).where(item_list_category_relations: { category_id: @category })
  end

  def show
    @user = User.find(params[:id])
    @item_lists = current_user.item_lists.all

    # fovoriteモデルから現在ユーザーのitem_list_idを取得
    user_favorites = Favorite.where(user_id: current_user.id).order(created_at: :desc).pluck(:item_list_id)
    #　上記item_list_idから、ログイン・ユーザーのお気に入りitem_listsを取得　
    @favorite_list = ItemList.find(user_favorites) 
     
    # @likes = ItemList.find(favorites)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:success] = 'ユーザを登録しました。'
      redirect_to root_url
    else
      flash.now[:danger] = 'ユーザの登録に失敗しました。'
      render :new
    end
  end

  def favorites
    @category = Category.all
    # redirect_to root_path unless current_user.id 
    favorites = Favorite.where(user_id: current_user.id).order(created_at: :desc).pluck(:item_list_id)
    @favorite_list = ItemList.find(favorites)  
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
