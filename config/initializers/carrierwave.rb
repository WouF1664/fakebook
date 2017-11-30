CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',       # required
    :aws_access_key_id      => ENV['S3_ACCESS_KEY'],       # required
    :aws_secret_access_key  => ENV['S3_SECRET_KEY'],       # required
    :region                 => ENV['S3_REGION']  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = ENV['S3_BUCKET'] # required
  
  # Config Heroku
  # heroku config:set S3_ACCESS_KEY=<access key>
  # heroku config:set S3_SECRET_KEY=<secret key>
  # heroku config:set S3_BUCKET=<bucket name>
  # heroku config:set S3_REGION='eu-west-1'
end