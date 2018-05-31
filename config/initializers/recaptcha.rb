Recaptcha.configure do |config|
  config.site_key  =  ENV['captcha_key']
  config.secret_key =  ENV['captcha_secret']
end