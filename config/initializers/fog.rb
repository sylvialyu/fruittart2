GoogleStorage = Fog::Storage::Google.new(
  :google_project => 'fullstack-tim',
  :google_client_email => 'nn70nn70@gmail.com',
  :google_key_location: Rails.root.join('private','google-cloud-service-key.p12'),
  :google_storage_access_key_id => ENV['GOOGLE_STORAGE_ACCESS_KEY_ID'],
  :google_storage_secret_access_key => ENV['GOOGLE_STORAGE_SECRET_ACCESS_KEY']
)
