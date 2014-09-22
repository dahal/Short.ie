require 'rails_helper'

describe UrlsController do
  let!(:urls) {100.times{Url.create(long_url: Faker::Internet.url)}}
  context "#index" do
    it "renders the application.html.erb layout and index template" do
      expect(get :index).to render_template(layout: 'application')
      expect(get :index).to render_template :index
    end
  end

  context "#create" do
    it "creates new url" do
      expect{
        post :create, url: FactoryGirl.create(:url)
      }.to change(Url, :count).by(1) 
    end
  end
  
end