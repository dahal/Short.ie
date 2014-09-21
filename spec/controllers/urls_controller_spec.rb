require 'rails_helper'

describe UrlsController do
  let!(:all_urls) {20.times{Url.create(long_url: Faker::Internet.url)}}
  context "#index" do
    it "renders the application.html.erb layout and index template" do
      expect(get :index).to render_template(layout: 'application')
      expect(get :index).to render_template :index
    end
  end
end