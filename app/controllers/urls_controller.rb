class UrlsController < ApplicationController
  def index
    render layout: true
  end

  def recent
    @urls = Url.all.first(20)
    render json: @urls.to_json
  end

end
