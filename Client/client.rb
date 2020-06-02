require 'httpclient'

base_url = 'http://3.112.219.32/hi'

client = HTTPClient.new()
response = client.get(base_url)
puts response.status
puts response.body
