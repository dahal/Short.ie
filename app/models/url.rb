require "securerandom"
class Url < ActiveRecord::Base
  validates :long_url, presence: true
  validates_format_of :long_url,
  with: /^(ftp|ftps|http|https):\/\/([a-zA-Z0-9]+(\.[a-zA-Z0-9]+)+.*)$/,
  multiline: true,
  on: :create
  validates :short_url, uniqueness: true
  before_create :shortify

  def shortify
    self.short_url ||= SecureRandom.base64(3)
  end

  def shortified
    if self.short_url != nil
      ENV['DOMAIN']+'/'+ self.short_url
    end
  end
end
