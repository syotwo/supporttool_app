class ItemListsController < ApplicationController
  before_action :require_user_logged_in, only: [:create, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  
  def index  
  end

  def show
    @item_list = ItemList.find(params[:id])
    @item = Item.new

    @items = @item_list.items
  end

  def new
    @item_list = ItemList.new
    @user = current_user
  end

  def create
    api_test

    @item_list = current_user.item_lists.new(item_list_params)
    @user = current_user

    if @item_list.save
      flash[:success] = 'リストを投稿しました'
      redirect_to item_list_path(@item_list.id)
      # redirect_to @item_listが省略型
      #リンクのパスとしてモデルオブジェクトが渡されると自動でidにリンクされる
    else
      flash.now[:danger] = 'リストの投稿に失敗しました。'
      render :new
    end
  end

  def edit
  end

  def update
    if @item_list.update(item_list_params)
      redirect_to @item_list
    else
      render :edit
    end
  end

  def destroy
    @item_list.destroy
    flash[:success] = 'Support-Kitを削除しました'
    redirect_to item_lists_path
  end

  private

  # Strong Parameter
  def item_list_params
    params.require(:item_list).permit(:list_name, :image, :list_description)
  end

  def correct_user
    @item_list = current_user.item_lists.find_by(id: params[:id])
    unless @item_list
      redirect_to root_url
    end
  end

  def api_test
    # encoding: UTF-8
    require 'net/https'
    require 'uri'
    require 'json'

    subscription_key = "a9938c3fe7814070b389e67cff1120c6"
    endpoint = "https://syomiyata.cognitiveservices.azure.com/"

    path = '/text/analytics/v3.0/sentiment'

    uri = URI(endpoint + path)

    documents = { 'documents': [
        { 'id' => '1', 'language' => 'en', 'text' => 'I really enjoy the new XBox One S. It has a clean look, it has 4K/HDR resolution and it is affordable.' },
        { 'id' => '2', 'language' => 'es', 'text' => 'Este ha sido un dia terrible, llegué tarde al trabajo debido a un accidente automobilistico.' }
    ]}

    puts 'Please wait a moment for the results to appear.'

    request = Net::HTTP::Post.new(uri)
    request['Content-Type'] = "application/json"
    request['Ocp-Apim-Subscription-Key'] = subscription_key
    request.body = documents.to_json

    response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
        http.request (request)
    end

puts JSON::pretty_generate (JSON (response.body))

  end
# binding.pry
end

