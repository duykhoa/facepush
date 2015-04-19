Rails.application.config.middleware.use OmniAuth::Builder do
  provider(
    :facebook,
    ENV['FB_APP_ID'],
    ENV['FB_APP_SECRET'],
    scope: 'email,read_stream',
    prompt: "select_account",
    display: "popup"
  )
end
