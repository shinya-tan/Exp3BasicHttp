require 'socket'

server = TCPServer.new 8080
loop do
  client = server.accept
  request = client.gets
  if(request.split(' ')[1] == "/hi") then
    ip_address = Socket.getifaddrs.select{|x| x.name == "eth0" and x.addr.ipv4?}.first.addr.ip_address
    client.puts "HTTP/1.1 200 OK"
    client.puts "Content-Type: text/plain"
    client.puts "Hello: BasicHTTP!"
    client.puts
    client.puts "#{ip_address}"
  end
    client.close
end
