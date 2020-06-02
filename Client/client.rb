require 'httpclient'

base_url = 'http://127.0.0.1:8080/hi'

client = HTTPClient.new()

response = client.get(base_url)
puts response.status #=> 200
puts response.body #=> {}
