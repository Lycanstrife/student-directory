student_count = 23

# The students and their cohorts in an array

students = [
	{:name => "Mario Gintili", :cohort => :february, :hobbies => "coding", :CoB => nil, :height => nil},
	{:name => "Mikhail Dubov", :cohort => :february, :hobbies => "coding", :CoB => nil, :height => nil},
	{:name => "Karolis Noreika", :cohort => :february, :hobbies => "coding", :CoB => nil, :height => nil},
	{:name => "Michael Sidon", :cohort => :february, :hobbies => "coding", :CoB => nil, :height => nil},
	{:name => "Charles De Barros", :cohort => :february, :hobbies => "coding", :CoB => nil, :height => nil},
	{:name => "Ruslan Vikhor", :cohort => :february, :hobbies => "coding", :CoB => nil, :height => nil},
	{:name => "Toby Retallick", :cohort => :february, :hobbies => "coding", :CoB => nil, :height => nil},
	{:name => "Mark Mekhaiel", :cohort => :february, :hobbies => "coding", :CoB => nil, :height => nil},
	{:name => "Sarah Young", :cohort => :february, :hobbies => "coding", :CoB => nil, :height => nil},
	{:name => "Hannah Wight", :cohort => :february, :hobbies => "coding", :CoB => nil, :height => nil},
	{:name => "Khushkaran Singh", :cohort => :february, :hobbies => "coding", :CoB => nil, :height => nil},
	{:name => "Rick Brunstedt", :cohort => :february, :hobbies => "coding", :CoB => nil, :height => nil},
	{:name => "Manjit Singh", :cohort => :february, :hobbies => "coding", :CoB => nil, :height => nil},
	{:name => "Alex Gaudiosi", :cohort => :february, :hobbies => "coding", :CoB => nil, :height => nil},
	{:name => "Ross Hepburn", :cohort => :february, :hobbies => "coding", :CoB => nil, :height => nil},
	{:name => "Natascia Marchese", :cohort => :february, :hobbies => "coding", :CoB => nil, :height => nil},
	{:name => "Tiffanie Chia", :cohort => :february, :hobbies => "coding", :CoB => nil, :height => nil},
	{:name => "Matthew Thomas", :cohort => :february, :hobbies => "coding", :CoB => nil, :height => nil},
	{:name => "Freddy McGroarty", :cohort => :february, :hobbies => "coding", :CoB => nil, :height => nil},
	{:name => "Tyler Rollins", :cohort => :february, :hobbies => "coding", :CoB => nil, :height => nil},
	{:name => "Richard Curteis", :cohort => :february, :hobbies => "coding", :CoB => nil, :height => nil},
	{:name => "Anna Yanova", :cohort => :february, :hobbies => "coding", :CoB => nil, :height => nil},
	{:name => "Andrew Cumine", :cohort => :february, :hobbies => "coding", :CoB => nil, :height => nil}
]

=begin 
Mental Note: Watch out for commas when copying
and pasting previous lines for convenience!
=end

def print_header
	puts "The students in my cohort at Makers Academy".center(100)
	puts "-------------------------------------------".center(100)
end

def print(students)
	students.each do |student|
		if "#{student[:name]}".length < 20
			puts "#{student[:name]} (#{student[:cohort]} cohort) - (Enjoys #{student[:hobbies]}!)".center(100)
		end
	end
end

def print_footer(names)
	puts "---------------------------------".center(100)
	puts "Overall, we have #{names.length} in our cohort.".center(100)
end

print_header
print(students)
print_footer(students)