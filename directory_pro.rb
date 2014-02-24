@students = []

def print_menu
	puts "1. Input the students"
	puts "2. Show the students"
	puts "3. Save the list to students.csv"
	puts "4. Load the list from students.csv"
	puts "9. Exit"
end

def process(selection)
	case selection
	when "1"
		input_students
	when "2"
		show_students
	when "3"
		save_students
	when "4"
		load_students
	when "9"
		exit
	else
		puts "I don't know what you meant, try again"
	end
end

def interactive_menu
	loop do
		print_menu
		process STDIN.gets.chomp
	end
end

def input_students
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"
	name = gets.chomp
	while !name.empty? do
		puts "Enter Cohort"
		cohort = STDIN.gets.chomp
		cohort = "N/A" if cohort.empty?
		@students << {:name => name, :cohort => cohort}
		puts "Now we have #{@students.length} students. Any more?"
		name = STDIN.gets.chomp
	end
end

def show_students
	print_header
	print_students_list
	print_footer
end

def save_students
	file = File.open("students.csv", "w")
	@students.each do |student|
		student_data = [student[:name], student[:cohort]]
		csv_line = student_data.join(",")
		file.puts csv_line
	end
	file.close
end

def load_students(filename = "students.csv")
	file = File.open(filename, "r")
	file.readlines.each do |line|
		name, cohort = line.chomp.split(',')
		@students << {:name => name, :cohort => cohort.to_sym}
	end
	file.close
end

def try_load_students
	filename = ARGV.first # First argument from the command line
	return if filename.nil? # Get out of the method if it isn't given
	if File.exists?(filename) # It it exists
		load_students(filename)
		puts "Loaded #{@students.length} from #{filename}"
	else # If it doesn't
		puts "Sorry, #{filename} doesn't exist"
		exit # Quit the program
	end
end

def print_header
	puts "The students in my cohort at Makers Academy"
	puts "-------------------------------------------"
end

def print_students_list
	@students.each do |student|
		puts "#{student[:name]} - (#{student[:cohort]} cohort)"
	end
end

def print_footer
	puts "---------------------------------"
	puts "Overall, we have #{@students.length} in our cohort."
end

try_load_students
interactive_menu