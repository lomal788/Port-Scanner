require 'socket'
require 'timeout'
print "IP/Address : "
ip = gets.chomp
ports = 19..25
ports.each do |scan|
begin
Timeout::timeout(10){TCPSocket.new("­;#{ip}", scan)}
rescue
puts "closed : #{scan}"
else
puts "open : #{scan}"
end
end