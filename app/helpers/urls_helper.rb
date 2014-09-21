module UrlsHelper
  def shortified(url)
    ENV['DOMAIN']+'/'+url.short_url
  end
end
