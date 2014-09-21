require 'rails_helper'

describe UrlsController do
  let!(:urls) {100.times{Url.create(long_url: Faker::Internet.url)}}
  context "#index" do
    it "renders the application.html.erb layout and index template" do
      expect(get :index).to render_template(layout: 'application')
      expect(get :index).to render_template :index
    end
  end

  context "#recent_links" do
    it "return 20 urls as json object" do
      get :recent_links
      jsonify = JSON.parse(response.body)
      expect(jsonify.count).to eq(20)
    end
  end

end