projects = { Reinhardt: "SkillFair", Dorothy: "Du", Ajia: "Nene" }

projects.each_key { |key| puts key}
projects.each_value { |value| puts value}
projects.each { |key, value| puts "The project offered by #{key} is #{value}."}