class EmotionsController < ApplicationController
  before_action :require_user_logged_in, only: [:edit, :update, :destroy]

  def index
    confidence_value
    @item_lists = ItemList.all.order(created_at: :desc)
  end

  def show
  end

  def new
    @emotion = Emotion.new
  end

  def create
    emotion_api
    # @emotion = current_user.emotions.new(emotion_params)
    redirect_to emotions_path(@sentiment)
    # if @emotion.save
    #   flash[:success] = 'sheetを投稿しました'
      
    # else
    #   flash.now[:danger] = 'sheetの投稿に失敗しました。'
    # end
     
  end

  def destroy

  end

  private

  def emotion_params
    params.require(:emotion).permit({ mood: [] })
  end

  def emotion_api
    # encoding: UTF-8
    require 'net/https'
    require 'uri'
    require 'json'

    subscription_key = "a9938c3fe7814070b389e67cff1120c6"
    endpoint = "https://syomiyata.cognitiveservices.azure.com/"

    path = '/text/analytics/v3.0/sentiment'

    uri = URI(endpoint + path)
    # binding.pry
    # emotion = emotion_params
    # sheet_text = emotion["sheet"]

    emotion_text = emotion_params.values.join

    documents = { 'documents': [
        { 'id' => '1', 'language' => 'ja', "text" => emotion_text }
    ]}
    
    puts 'Please wait a moment for the results to appear.'

    request = Net::HTTP::Post.new(uri)
    request['Content-Type'] = "application/json"
    request['Ocp-Apim-Subscription-Key'] = subscription_key
    request.body = documents.to_json

    response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
        http.request (request)
    end

    result = JSON.parse(response.body)
    @sentiment = result["documents"][0]
    
    # puts JSON::pretty_generate (JSON (response.body))
  end

  def confidence_value
    if @sentiment_params = request.query_parameters
      if @confidencescores = @sentiment_params["confidenceScores"]
      @negative = @confidencescores["negative"]
      @neutral = @confidencescores["neutral"]
      @positive = @confidencescores["positive"]
      end
    # binding.pry
    end
  end

end