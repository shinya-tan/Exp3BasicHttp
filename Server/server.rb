require 'socket'

server = TCPServer.new 2000
loop do
  client = server.accept
  headers = []
  while header = client.gets
    break if header.chomp.empty?
    headers << header.chomp
  end
  # p headers
  ip_address = Socket.getifaddrs.select{|x| x.name == "en0" and x.addr.ipv4?}.first.addr.ip_address
  client.puts "HTTP/1.0 200 OK"
  client.puts "Content-Type: text/plain"
  client.puts
  client.puts "#{ip_address}"
  client.close
end
