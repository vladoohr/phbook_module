#!/usr/bin/ruby -w

module Create
	def Create.create
		print "Full Name>"
		name = gets.chomp
		print "Phone Number>"
		phone = gets.chomp
		print "Email>"
		email = gets.chomp
		
		File.open("#{File.dirname(__FILE__)}/../phonebook.txt", "a+") do |aFile|
			aFile.puts("#{name}, #{phone}, #{email}")
		end
	end
end
