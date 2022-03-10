class FavoritesController < ApplicationController
  before_action :require_user_logged_in

  def create
    @favorite = current_user.favorites.create(item_list_id: params[:item_list_id])
    redirect_back(fallback_location: root_path)

    # binding.pry
  end

  def destroy
    @item_list = ItemList.find(params[:item_list_id])
    @favorite = current_user.favorites.find_by(item_list_id: @item_list.id)
    @favorite.destroy
    redirect_back(fallback_location: root_path)
  end
end
