class LikesController < ApplicationController
    before_action :require_user_logged_in

    def create
        @like = current_user.likes.create(item_list_id: params[:item_list_id])
        redirect_back(fallback_location: root_path)
        # binding.pry
    end

    def destroy
        @item_list = ItemList.find(params[:item_list_id])
        @like = current_user.likes.find_by(item_list_id: @item_list.id)
        @like.destroy
        redirect_back(fallback_location: root_path)
    end
end
