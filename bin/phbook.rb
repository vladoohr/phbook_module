#!/usr/bin/ruby -w

$LOAD_PATH.unshift("#{File.dirname(__FILE__)}/../lib")
#$:.unshift("#{File.dirname(__FILE__)}/../lib")
require "operations"

command = ARGV[0]

if ( command )
	Operations.resolve(command)
else
	Operations.welcome
	Operations.dispatch
end

