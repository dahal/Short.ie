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

  private
  def url_params
    params.require(:url).permit(:long_url, :short_url)
  end

end
