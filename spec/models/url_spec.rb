require 'rails_helper'

describe Url do
  context "Validation" do
    it "Validates the presence of long url"
    it "Validates the given long url to be valid"
    it "Validates the given long url to be invalid"
    it "Validates the uniqueness of short url"
    it "Validates that it shortens the url before save"
  end
end
