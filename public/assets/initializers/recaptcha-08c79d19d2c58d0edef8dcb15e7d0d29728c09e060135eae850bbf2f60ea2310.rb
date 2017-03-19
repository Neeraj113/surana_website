Recaptcha.configure do |config|
  config.site_key  = APP_CONFIG['recaptcha_site_key']
  config.secret_key = APP_CONFIG['recaptcha_secret_key']
  config.proxy = 'https://www.google.com/recaptcha/api/siteverify'
end