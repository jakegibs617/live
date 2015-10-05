CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV["AWS_ACCESS_KEY"] || "",
    aws_secret_access_key: ENV["SECRET_AWS_ACCESS_KEY"] || "",
  }
  config.fog_directory = ENV["AWS_S3_BUCKET"] || ""
end
