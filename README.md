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


```

   _____                                    
  / ____|                                   
 | (___    ___  _ __ __   __ ___  _ __  ___ 
  \___ \  / _ \| '__|\ \ / // _ \| '__|/ __|
  ____) ||  __/| |    \ V /|  __/| |   \__ \
 |_____/  \___||_|     \_/  \___||_|   |___/
                                            
                                            
```
The first excercise on servers comes from [this](https://github.com/makersacademy/skills-workshops/blob/master/practicals/servers_and_clients/servers.md) practical. Starting code was:
```
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

