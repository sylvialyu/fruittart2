GoogleStorage = Fog::Storage.new(
provider: 'Google',
google_project: 'fullstack-tim',
google_client_email: 'nn70nn70@developer.gserviceaccount.com',
google_key_location: Rails.root.join('private','google-cloud-service-key.p12'),
google_storage_access_key_id: ENV["GOOGLE_ID"],
google_storage_secret_access_key: ENV["GOOGLE_KEY"]
)
