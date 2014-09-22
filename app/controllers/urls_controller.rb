class UrlsController < ApplicationController
  def index
    @urls = Url.all.first(15)
    render layout: true
  end
  
  def create
    long = params[:long_url]
    if params.has_key?('short_url')
      @url = Url.create(long_url: long, short_url: params[:short_url])
    else
      @url = Url.create(long_url: long)
    end
    render json: {
      long_url: @url.long_url,
      short_url: ENV['DOMAIN']+'/'+@url.short_url
      }.to_json
  end

  def redirect
    @url = Url.where(short_url: params[:shortie]).first
    redirect_to @url.long_url 
  end
end
