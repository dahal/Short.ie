require 'rails_helper'

describe UrlsController do
  let!(:urls) {100.times{Url.create(long_url: Faker::Internet.url)}}
  context "#index" do
    it "renders the application.html.erb layout and index template" do
      expect(get :index).to render_template(layout: 'application')
      expect(get :index).to render_template :index
    end
  end

  context "#recent" do
    it "return 20 urls as json object" do
      get :recent
      jsonify = JSON.parse(response.body)
      expect(jsonify.count).to eq(20)
    end
  end

  context "#create" do
    it "creates new url" do
      expect{
        post :create, url: FactoryGirl.attributes_for(:url)
      }.to change(Url, :count).by(1)
    end
  end

end