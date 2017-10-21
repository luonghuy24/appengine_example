require 'carrierwave/storage/fog'
require 'fog/google'

CarrierWave.configure do |config|
  config.fog_provider = 'fog/google'                        # required
  config.fog_credentials = {
    provider:                         'Google',
    google_storage_access_key_id:     'GOOG6BOLAPVZPTETJNGL',
    google_storage_secret_access_key: '7TgEFPGu7zQJAnX9pQdEUUwLMT4msSSVWKzTrin+'
  }
  config.storage = :fog
  config.fog_directory = 'test1234232134'
end