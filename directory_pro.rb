@students = []

def print_menu
	puts "1. Input the students"
	puts "2. Show the students"
	puts "9. Exit"
end

def interactive_menu
	@students = []
	loop do
	  selection = gets.chomp
	  case selection
	  	when "1"
	  		students = input_students
	  	when "2"
	  		students = show_students
	  	when "9"
	  		exit
	  	else
	  		puts "I don't know what you meant, try again"
	  	end
	end
end

def show_students
	print_header
	print(@students)
	print_footer(@students)
	print_menu
end

def input_students
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"
	@students = []
	name = gets.chomp
	while !name.empty? do
		puts "Enter Cohort"
		cohort = gets.chomp
		cohort = "N/A" if cohort.empty?
		@students << {:name => name, :cohort => cohort}
		puts "Now we have #{@students.length} students. Any more?"
		name = gets.chomp
	end
	@students
	print_menu
end

def print_header
	puts "The students in my cohort at Makers Academy"
	puts "-------------------------------------------"
end

def print (students)
	students.each do |student|
		puts "#{student[:name]} (#{student[:cohort]} cohort)"
	end
end

def print_footer(names)
	puts "---------------------------------"
	puts "Overall, we have #{names.length} in our cohort."
end

print_menu
print(interactive_menu)
print_header
print(@students)
print_footer(@students)