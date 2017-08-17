CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider              => 'AWS',
    :aws_access_key_id     => "#{ENV['aws_access_key']}",
    :aws_secret_access_key => "#{ENV['aws_secret_key']}",
    :region                => "#{ENV['S3_REGION']}",
    :path_style            => true
  }

  config.fog_directory =  "#{ENV['S3_BUCKET_NAME']}"
  config.cache_dir     = "#{Rails.root}/tmp/uploads"   # For Heroku
end
