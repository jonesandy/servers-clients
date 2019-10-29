require 'socket'

server = TCPServer.new(2345)

loop{
  socket = server.accept   
  they_said = ""
  
  until they_said == "quit" do

    socket.puts "What do you say?"   
    they_said = socket.gets.chomp   
    socket.puts "You said: #{they_said}."

  end

  socket.close
}
