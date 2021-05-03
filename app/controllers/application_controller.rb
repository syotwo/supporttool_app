class ApplicationController < ActionController::Base
  include SessionsHelper

  private

  def require_user_logged_in
    redirect_to login_url unless logged_in?
  end

  before_action :set_search
  # 中省略
  def set_search
    # 以下は検索に使うときの記述（変数やモデル名は変更してもいいですが
    # ".ransack(params[:q])"はそのままで使用します。）
    @search = ItemList.ransack(params[:q])

    # 以下は検索したものを表示する時に使う記述(一番シンプルで基本の形です)
    @item_lists = @search.result(distinct: true)
  end
end
