CarrierWave.configure do |config|
  config.fog_provider = 'fog/google'
  config.fog_credentials = {
      provider:                         'Google',
      google_storage_access_key_id:     'GOOGZPQTHMUX23LNHTHTUUBZ',
      google_storage_secret_access_key: 'BZWAPgIMqoTryTao682ESIhRyq4JTUOfFUasmYRH'
  }
  config.fog_directory = 'upload'
end