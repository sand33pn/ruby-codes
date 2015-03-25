class Student
	attr_accessor :first_name, :last_name, :primary_phone_number

	def introduction(target)
		puts "Hi #{target}, I'm #{first_name}!"		
	end

	def favorite_number
		13
	end
end

sandeep = Student.new
sandeep.first_name = "Sandeep"
sandeep.introduction('Anushka')
puts "#{sandeep.first_name}'s favorite number is #{sandeep.favorite_number}"