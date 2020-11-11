# __2nd variant (optonnal)__
# Instead of taking an average out of 20 we could imagine making an average out of 10 20 30
# but also allow to enter grades no longer on 20 but also on 10 20 30, 
# knowing that of course, it is possible to enter grades out of 10 and grades out of 20 at the same time.

# We display a sentence which tell how to enter the grades
puts "Entrez vos notes comme ceci : 'note sur_combien' exemple 17/20 devient 17 20"
# We prepare an empty array
grades = []
# While 'STOP' is not entered 
stop = false
while !stop
	# We get the input
	grade = gets.chomp
	# if input is 'STOP'
	if grade == "STOP"
		# we stop the loop
		stop = true
	else
		# else we split the input on the space
		grade = grade.split(" ")
		# and we add both part in the array
		grades.push([grade[0].to_i, grade[1].to_i])
	end
end

# We ask on how much the average is
puts "Entrez sur combien vous voulez votre moyenne"
on_how_much = gets.to_i

# We prepare an array
grades_parsed = []
grades.each do |grade|
	# for each grade we transform it into a new grade
	grades_parsed.push(grade[0] * on_how_much / grade[1])
end

# we display the number of grades
puts "Vous avez entré " + grades.length.to_s + " notes"
# we display the average
print "La moyenne sur " + on_how_much.to_s + " est de "
print grades_parsed.reduce(:+) / grades_parsed.length