CarrierWave.configure do |config|
  if Rails.env.production?
    config.fog_provider = 'fog'
    config.fog_credentials = {
      provider:              'Google',
      goog_storage_access_key_id:     ENV["GOOG_ACCESS_KEY_ID"],

      goog_storage_secret_access_key: ENV["GOOG_SECRET_ACCESS_KEY"],

      region:                ENV["GOOG_REGION"]

    }
    config.fog_directory  = ENV["GOOG_BUCKET_NAME"]


  else
    config.storage :file
  end
end
