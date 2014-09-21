require "securerandom"
class Url < ActiveRecord::Base
  validates :long_url, presence: true
  validates_format_of :long_url,
  with: /^((ftp|http|https):\/\/)?([a-zA-Z0-9]+(\.[a-zA-Z0-9]+)+.*)$/,
  multiline: true,
  on: :create
  validates :short_url, uniqueness: true

  def shortify
    self.short_url ||= SecureRandom.base64(3)
  end
end
