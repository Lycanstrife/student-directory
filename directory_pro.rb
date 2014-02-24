def interactive_menu
	students = []
	loop do
	# 1. Print the menu and ask the user what to do
	  puts "1. Input the students"
	  puts "2. Show the students"
	  puts "9. Exit"
	# 2. Read the input and save it into a variable
	  selection = gets.chomp
	# 3. Do what the user has asked
	  case selection
	  	when "1"
	  		students = input_students
	  	when "2"
	  		print_header
	  		print(students)
	  		print_footer(students)
	  	when "9"
	  		exit # This will cause the program to terminate
	  	else
	  		puts "I don't know what you meant, try again"
	  	end
	end
end

def input_students
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"
	students = []
	name = gets.chomp
	while !name.empty? do
		puts "Enter Cohort"
		cohort = gets.chomp
		cohort = "N/A" if cohort.empty?
		students << {:name => name, :cohort => cohort}
		puts "Now we have #{students.length} students. Any more?"
		name = gets.chomp
	end
	students
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

students = interactive_menu
print_header
print(students)
print_footer(students)