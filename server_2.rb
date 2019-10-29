require 'socket'

server = TCPServer.new(2345)

socket = server.accept

socket.puts "HELLO FRIEND WHAT IS YOUR NAME?"
name = socket.gets.chomp
socket.puts "THAT'S A SWELL NAME #{name}"
socket.puts "CAN'T WAIT TO TALK TO YOU AGAIN #{name}"
bye = socket.gets.chomp
socket.puts "#{bye}!"

loop do
  socket.puts "YOU HANG UP"
  response = socket.gets.chomp
  socket.puts "#{response}"
end

socket.close
