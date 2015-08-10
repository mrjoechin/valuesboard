require "refile/s3"

if Rails.env.production?
  aws = {
    access_key_id: ENV["AWS_ACCESS_KEY"],
    secret_access_key: ENV["AWS_SECRET_KEY"],
    region: "us-west-1",
    bucket: "valuesboard-prod",
  }
else
  aws = {
    access_key_id: ENV["AWS_ACCESS_KEY"],
    secret_access_key: ENV["AWS_SECRET_KEY"],
    region: "us-west-1",
    bucket: "valuesboard-test",
  }
end

Refile.cache = Refile::S3.new(prefix: "cache", **aws)
Refile.store = Refile::S3.new(prefix: "store", **aws)