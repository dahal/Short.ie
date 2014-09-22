class UrlsController < ApplicationController
  def index
    @urls = Url.all.first(15)
    render layout: true
  end
  
  def create
    @url = Url.new
    @url.long_url = params[:long_url]
    if params.has_key?('short_url')
      @url.short_url = params[:short_url]
    end
    @url.save
    render json: {
      long_url: @url.long_url,
      short_url: @url.shortified
      }.to_json
  end

  def redirect
    @url = Url.where(short_url: params[:shortie]).first
    redirect_to @url.long_url 
  end
end
