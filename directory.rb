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

# Then print the array

puts "The students in my cohort at Makers Academy"
puts "-------------------------------------------"
students.each do |student|
	puts student
end

# Then last we print the total


puts "---------------------------------"
puts "Overall, we have #{students.length} in our cohort."