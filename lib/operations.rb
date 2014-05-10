#!/usr/bin/ruby -w

module Operations
	def Operations.welcome
		#num_contacts = %x{wc -l ../../phonebook.txt}.to_i
		num_contacts = File.readlines("#{File.dirname(__FILE__)}/../phonebook.txt").size
		puts "Welcome to PhoneBook Application!\nYou have #{num_contacts} contacts in your phonobook"
	end

	def Operations.prompt
		puts "Please choose action: create, delete, search, list, quit, help?"
		print "phb>"
		value = gets.chomp
		return value
	end

	def Operations.dispatch
		action = Operations.prompt
		Operations.resolve(action)
	end

	def Operations.resolve(action)
		function = action.slice(0,1).capitalize + action.slice(1..-1) + "." + action
		eval("require '#{action}'")
		eval(function)
		Operations.dispatch
	end
end