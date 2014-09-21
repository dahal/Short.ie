class Url < ActiveRecord::Base
  validates :long_url, presence: true
  validates_format_of :long_url,
  with: /^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$/,
  multiline: true,
  on: :create
end
