require 'rails_helper'

describe Url do
  context "Validation" do
    let(:valid_url) { FactoryGirl.create(:url)  } 
    let(:invalid_url) { Url.create(long_url: 'google') }

    it "Validates the presence of long url" do
      expect(valid_url).to validate_presence_of(:long_url)
    end
    it "Validates the given long url to be valid"
    it "Validates the given long url to be invalid"
    it "Validates the uniqueness of short url"
    it "Validates that it shortens the url before save"
  end
end
