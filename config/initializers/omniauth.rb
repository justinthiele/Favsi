Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'Key', 'Key'
  provider :facebook, 'Key', 'Key'
  
end