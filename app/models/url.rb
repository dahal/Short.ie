class Url < ActiveRecord::Base
  validates :long_url, presence: true
  validates_format_of :long_url,
  with: /^((ftp|http|https):\/\/)?([a-zA-Z0-9]+(\.[a-zA-Z0-9]+)+.*)$/,
  multiline: true,
  on: :create
end
