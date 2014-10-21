student = {name: "Reinhardt"}
iq = {iq: "180p"}

puts student.merge(iq)
puts student
puts iq

puts student.merge!(iq)
puts student
puts iq