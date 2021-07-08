class ToppagesController < ApplicationController
  def index
    @item_lists = ItemList.all.order(created_at: :desc)
  end
end
