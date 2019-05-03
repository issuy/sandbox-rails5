# frozen_string_literal: true

# TODO: activate production credentials
# keys = Rails.application.credentials[:aws]
# creds = Aws::Credentials.new(keys[:access_key_id], keys[:secret_access_key])

# TODO: replace ganeral config
creds = Aws::Credentials.new('minio', 'minio123')

Aws.config.update(endpoint: 'http://minio:9000', credentials: creds, force_path_style: true, region: 'us-east-1')

# Example: How to access
# client = Aws::S3::Client.new
# client.list_buckets({})
