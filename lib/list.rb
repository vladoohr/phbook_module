#!usr/bin/ruby -w

module List
	def List.list
		puts "Contacts:"
		IO.foreach("#{File.dirname(__FILE__)}/../phonebook.txt"){|line| puts line}
		puts
	end
end