require 'rails_helper'

describe UrlsController do
  context "#index" do
    it "renders the application.html.erb layout" do
      expect(get :index).to render_template(layout: 'application')
    end
    it "return all domains as an json object"
  end
end