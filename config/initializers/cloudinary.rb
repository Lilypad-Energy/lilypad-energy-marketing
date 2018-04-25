Cloudinary.config do |config|
  config.cloud_name = 'lilypad-energy'
  config.api_key = ENV['cloudinary_key']
  config.api_secret = ENV['cloudinary_secret']
  config.secure = true
  config.cdn_subdomain = true
end