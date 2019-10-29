# Servers and Clients

This repository is for my learning of how servers and clients work. This is for the Makers Academy week 3.

To run the examples requires Homebrew to be installed on your mac:
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
And also telnet:
```
brew install telnet
```
----------

```

   _____                                    
  / ____|                                   
 | (___    ___  _ __ __   __ ___  _ __  ___ 
  \___ \  / _ \| '__|\ \ / // _ \| '__|/ __|
  ____) ||  __/| |    \ V /|  __/| |   \__ \
 |_____/  \___||_|     \_/  \___||_|   |___/
                                            
                                            
```
The first excercise on servers comes from [this](https://github.com/makersacademy/skills-workshops/blob/master/practicals/servers_and_clients/servers.md) practical. Starting code was:

```ruby
require 'socket'

server = TCPServer.new(2345)

socket = server.accept

socket.puts "What do you say?"

they_said = socket.gets.chomp

socket.puts "You said: #{they_said}. Goodbye!"

socket.close
```
This code starts by requiring the socket class. This allows access to operating system socket implementations. We then create a new instance of a TCP server class. This TCP server allows the establishment of a reliable connection between two hosts and lets us connect on port 2345. The server is then set up to accept incoming connections. Once the interaction happens it then closes the socket.

I modified the code to allow the server to continue to run.  The user can stay connected and continue to type until they choose to quit by typing ```quit```.  Finished code [here](server.rb).

to run from the home folder type:
```
$ ruby server.rb
```
In a seperate terminal window connect via:
```
telnet localhost 2345
```

----------
```

   ___ _ _            _       
  / __| (_) ___ _ __ | |_ ___ 
 / /  | | |/ _ | '_ \| __/ __|
/ /___| | |  __| | | | |_\__ \
\____/|_|_|\___|_| |_|\__|___/
                              
```

The first excercise on clients comes from [this](https://github.com/makersacademy/skills-workshops/blob/master/practicals/servers_and_clients/clients.md) practical.

The starting server code was this:

```ruby
require 'socket'

server = TCPServer.new(2345)

socket = server.accept

socket.puts "HELLO CLIENT WHAT IS YOUR NAME?"
name = socket.gets.chomp
socket.puts "THAT'S A LOVELY NAME #{name}"

socket.close
```

And the starting client code was this:

```ruby
require 'socket'

socket = TCPSocket.new('localhost', 2345)

puts socket.gets
puts "Wow what a rude server... I'm going to say Sarah"
socket.puts "Sarah"
puts socket.gets

socket.close
```

I decided to play around with the code to make them talk forever together. This required looping the socket interactions. The socket is the connection between them and by passing the messages back and forth you can see the interaction in the client terminal window.

(hangup.png)

Finished code for the [client](client.rb) and for the [server](server_2.rb).

Open two terminal windows and run in one:
```
$ ruby server_2.rb
```
```
$ ruby client.rb
```
To terminate the process, in the window running the client press: ```Ctrl + C```