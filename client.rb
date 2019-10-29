require 'socket'

socket = TCPSocket.new('localhost', 2345)

puts socket.gets
puts "Wow what a rude server... I'm going to say Steve"
socket.puts "Steve"
puts socket.gets
puts "Hopefully it won't ask me anymore questions."
puts socket.gets
puts "Great!"
socket.puts "BYE"
puts socket.gets

loop do
  puts socket.gets
  socket.puts "NO..YOU HANG UP"
  sleep(2)
end

socket.close
