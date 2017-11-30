CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',       # required
    :aws_access_key_id      => ENV['S3_ACCESS_KEY'],       # required
    :aws_secret_access_key  => ENV['S3_SECRET_KEY'],       # required
    :region                 => ENV['S3_REGION']  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = ENV['S3_BUCKET'] # required
  
  # For testing, upload files to local `tmp` folder.
  if Rails.env.test? || Rails.env.cucumber?
    config.storage = :file
    config.enable_processing = false
    config.root = "#{Rails.root}/tmp"
  else
    config.storage = :fog
  end

  config.cache_dir = "#{Rails.root}/tmp/uploads"  
  
  # Config Heroku
  # heroku config:set S3_ACCESS_KEY=<access key>
  # heroku config:set S3_SECRET_KEY=<secret key>
  # heroku config:set S3_BUCKET=<bucket name>
  # heroku config:set S3_REGION='eu-west-1'
end