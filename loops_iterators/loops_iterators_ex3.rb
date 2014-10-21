top_five_students = [
	"Reinhardt Lin",
	"Mitsun Chien",
	"Calvin Chu",
	"Jimmy Lin",
	"Fung Lee"
]

top_five_students.each_with_index do | student, index |
	puts "#{index + 1}. #{student}"
end