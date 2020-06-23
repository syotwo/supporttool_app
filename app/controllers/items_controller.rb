class ItemsController < ApplicationController

  def create
    @item = current_user.items.build(item_params)
    if @item.save
      flash[:success] = 'アイテムを投稿しました。'
    else
      flash.now[:danger] = 'メッセージの投稿に失敗しました。'
    end
  end

  def destroy
  end

  private

  def item_params
    params.require(:item).permit(:item_name)
  end
end
