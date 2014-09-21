require 'rails_helper'

describe Url do
  context "Validation" do
    let(:valid_url) { FactoryGirl.create(:url)  } 
    let(:invalid_url) { Url.create(long_url: 'google') }

    it "Validates the presence of long url" do
      expect(valid_url).to validate_presence_of(:long_url)
    end
    it "Validates the given long url to be valid" do
      expect(valid_url.valid?).to be(true)
    end
    it "Validates the given long url to be invalid" do
      expect(invalid_url.valid?).to be(false)
    end
    it "Validates the uniqueness of short url"
    it "Validates that it shortens the url before save" do
      expect(valid_url).to receive(:shortify)
      valid_url.shortify
    end
  end
end
