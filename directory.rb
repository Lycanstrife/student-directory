student_count = 23

# Lets' put the list of students in an array

students = [
	"Mario Gintili",
	"Mikhail Dubov",
	"Karolis Noreika",
	"Michael Sidon",
	"Charles De Barros",
	"Ruslan Vikhor",
	"Toby Retallick",
	"Mark Mekhaiel",
	"Sarah Young",
	"Hannah Wight",
	"Khushkaran Singh",
	"Rick Brunstedt",
	"Manjit Singh",
	"Alex Gaudiosi",
	"Ross Hepburn",
	"Natascia Marchese",
	"Tiffanie Chia",
	"Matthew Thomas",
	"Freddy McGroarty",
	"Tyler Rollins",
	"Richard Curteis",
	"Anna Yanova",
	"Andrew Cumine"
]

def print_header
	puts "The students in my cohort at Makers Academy"
	puts "-------------------------------------------"
end

def print (names)
	names.each do |name|
		puts name
	end
end

def print_footer(names)
	puts "---------------------------------"
	puts "Overall, we have #{names.length} in our cohort."
end

print_header
print(students)
print_footer(students)