# ## Exo 3 - Ecrire une méthode qui prendra 2 paramètres *nom* et *surnom* qui affichera

# > `Hello  surnom`     # si seul le surnom est fourni
# >
# > `Bonjour  nom` #   si seul le nom est fourni
# >
# > `Bonjour Nom` # **ET QUE** si les 2 sont fournis


# celui là il est chiant, c'est l'idée :)

# On demande  à 2 reprises à l'utilisateur de saisir son nom et son surnom
# Même remarque sur la vérification de la saisie

puts 'Saisir votre nom'
name = gets.chomp.downcase

puts 'Saisir votre surnom'
surname = gets.chomp.downcase

# on doit ici faire des gros if, else bien triste 
# pas de méthode magique
if name.empty? and !surname.empty?
  puts "Hello #{surname}"
elsif !name.empty? and surname.empty?
  puts "Bonjour #{name}"
elsif !name.empty? and !surname.empty?
  puts "Bonjour #{name.capitalize}"
else
  puts 'oups tout cassé'
end