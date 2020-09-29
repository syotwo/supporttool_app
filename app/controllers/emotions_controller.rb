class EmotionsController < ApplicationController
  before_action :require_user_logged_in

  def index
    if @sentiment_params = request.query_parameters
      if @confidencescores = @sentiment_params["confidenceScores"]
      @negative = @confidencescores["negative"]
      @neutral = @confidencescores["neutral"]
      @positive = @confidencescores["positive"]
      end
    # binding.pry
    end
  end

  def show
  end

  def new
    @emotion = Emotion.new
  end

  def create
    api_test
    @emotion = current_user.emotions.new(emotion_params)
    # binding.pry
    if @emotion.save
      flash[:success] = 'sheetを投稿しました'
      redirect_to emotions_path(@sentiment)
    else
      flash.now[:danger] = 'sheetの投稿に失敗しました。'
    end
    
    
  end

  def destroy

  end

  private

  def emotion_params
    params.require(:emotion).permit(:sheet)
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

    emotion = emotion_params
    sheet_text = emotion["sheet"]
    documents = { 'documents': [
        { 'id' => '1', 'language' => 'ja', "text" => "#{sheet_text}" }
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

end