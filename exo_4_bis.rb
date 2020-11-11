# __1st variant (optional)__
# Instead of entering grade by grade, we enter all the grades on a single entry separated by spaces, 
# the validation would send the grades.

# We ask for the grades
puts "Entrez toutes les notes sur 20 séparés d'un espace"
# We get th grades
input = gets.chomp
# We separate the grades
grades = input.split(' ');
# we transform the array into the sum of its values
sum = grades.reduce(&:+)
# the sum is divided by the number of grades
average = sum / grades.length;
# we print the number of grades
puts "il y a eu #{grades.length} notes saisies"
# we print the result
puts "La moyenne est de #{average}/20"