# ## Exo 2 - Table de multiplication

# L’utilisateur devrait renseigne un nombre de 1 chiffre
# Le résultat affichera :

# > La table de multiplication du chiffre ##chiffre saisie## est :
# > 1 * `chiffre saisie` = `chiffre saisie` * 1
# > 2 * …
# > 3 *
# > …
# > 10 *

# demande à l'utilisateur de saisir un chiffre
# attention, l'utilisateur est en droit, de mettre n'importe quoi à ce stade
# il faudrait vérifier à la saisie qu'il s'agisse bien d'un nombre d'un chiffre sans lettres
puts 'Saisir votre mot'
number = gets.chomp.to_i

# on effectue une boucle de 1 à 10
# on affihe la phrase comme demandée
# pas besoin de méthode ici
(1..10).each do |n|
  puts "#{n} * #{number} = #{n * number}"
end