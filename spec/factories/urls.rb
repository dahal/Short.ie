# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :url do
    long_url "MyString"
    short_url "MyString"
  end
end
