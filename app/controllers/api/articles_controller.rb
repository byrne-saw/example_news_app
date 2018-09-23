class Api::ArticlesController < ApplicationController
  def index
    response = HTTP.get("https://newsapi.org/v2/top-headlines?q=#{params[:subject]}&apiKey=#{ ENV['NEWS_API_KEY'] }")
    render json: response.parse
  end

end
