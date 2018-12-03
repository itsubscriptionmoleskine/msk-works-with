CarrierWave.configure do |config|
  config.storage                             = :gcloud
  config.gcloud_bucket                       = 'works-with-image-upload'
  config.gcloud_bucket_is_public             = true
  config.gcloud_authenticated_url_expiration = 600
  config.gcloud_content_disposition          = 'attachment'
  config.gcloud_attributes = {
    expires: 600
  }
  config.gcloud_credentials = {
    gcloud_project: 'works-with-222514',
    gcloud_keyfile: 'works-with.json'
  }
end