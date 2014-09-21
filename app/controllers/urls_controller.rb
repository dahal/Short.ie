class UrlsController < ApplicationController
  def index
    render layout: true
  end

  def recent
    @urls = Url.all.first(20)
    render json: @urls.to_json
  end

  def create
    @url = Url.create(url_params)
    render json: @url.to_json
  end

  def redirect
    @url = Url.where(short_url: params[:shortie]).first
    redirect_to @url.long_url 
  end

  private
  def url_params
    params.require(:url).permit(:long_url, :short_url)
  end

end
