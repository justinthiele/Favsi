CarrierWave.configure do |config|
  
  config.root = Rails.root.join('tmp')
  config.cache_dir = 'carrierwave'
  
  config.s3_access_key_id = 'MyKey'
  config.s3_secret_access_key = 'MyKey'
  config.s3_bucket = 'Bucket'

end