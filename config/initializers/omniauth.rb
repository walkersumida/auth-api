Rails.application.config.middleware.use OmniAuth::Builder do
  secrets = Rails.application.secrets
  provider :google_oauth2,
           secrets.google_oauth_client_id,
           secrets.google_oauth_client_secret,
           scope: 'userinfo.email,userinfo.profile'
end
