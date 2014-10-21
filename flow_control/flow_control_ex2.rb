def caps(string)
	if string.length > 10
		string.upcase
	else
		string
	end
end

puts caps("Reinhardt Lin")
puts caps("C.Y. Lin")