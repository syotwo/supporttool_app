class ToppagesController < ApplicationController
  
  def index
     @item_lists = ItemList.all.recent
     @digitalkit = ItemList.digital_category.recent
     @sleepkit = ItemList.sleep_category.recent
     @mykit = ItemList.where(user_id: session[:user_id]).recent
     @creativekit = ItemList.creative_category.recent
     @dailykit = ItemList.daily_category.recent
     @reducestresskit = ItemList.reducestress_category
     @focuskit = ItemList.focus_category

     
    #  binding.pry
  end
end
