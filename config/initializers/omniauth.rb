Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?

  # TODO:  Configure hooks to set ENV vars and set up providers
  #provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
end
