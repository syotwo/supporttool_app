class ToppagesController < ApplicationController
  def index
    # @item_lists = ItemList.all.order(created_at: :desc)

    @categories = Category.all
    @item_list = ItemList.includes(:categories).where(item_list_category_relations: { category_id: @category })

    if params[:category_id].present?
      #presentメソッドでparams[:category_id]に値が含まれているか確認 => trueの場合下記を実行
      @category = Category.find(params[:category_id])
      @item_lists = @category.item_lists.order(created_at: :desc)
    else
      # 投稿すべてを取得
      # @category = Category.find(5)
      @item_lists = ItemList.all.order(created_at: :desc)
    end
    
  end
end
