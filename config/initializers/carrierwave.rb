CarrierWave.configure do |config|
  config.storage                             = :gcloud
  config.gcloud_bucket                       = 'your-bucket-name'
  #ToDo: Add bucket name
  config.gcloud_bucket_is_public             = true
  config.gcloud_authenticated_url_expiration = 600
  config.gcloud_content_disposition          = 'attachment'

  config.gcloud_attributes = {
    expires: 600
  }

  config.gcloud_credentials = {
    gcloud_project: 'gcp-project-name',
    gcloud_keyfile: 'path-to-gcp-keyfile.json'
  }

  #ToDo: Add project data
end