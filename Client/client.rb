require 'httpclient'

base_url = 'http://127.0.0.1:2000'

client = HTTPClient.new()

response = client.get(base_url)
puts response.status #=> 200
puts response.body #=> {}

# client.post(base_url, {text: 'todo'}, 'Content-Type' => 'application/json')

# response = client.get(base_url)
# puts response.status #=> 200
# puts response.body #=> {"todos": [{"id": 1, "text": "todo"}]}

# response = client.get(base_url + '/1')
# puts response.status #=> 200
# puts response.body #=> {"id": 1, "text": "todo"}
