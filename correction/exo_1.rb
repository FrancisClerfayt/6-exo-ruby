# ## Exo 1 - Le palindrome
# Le script Ruby permettra de saisir un mot et de vérifier que ce mot est un palindrome.
# Le retour de code se fera comme suit :
# > Le mot `mot saisie` est un palindrome
# >
# > Le mot `mot saisie` n’est pas un palindrome

# ici il faut donc récupérer la saisie clavier de l'utilisateur
# et vérifier que l'inverse correspond ou pas au mot saisi.

# on crée une méthode qui va juste nous renvoyer true ou false
# params : (string) word
# return:  true / false
def palindrome?(word)
  word.eql? word.reverse
end

# demande à l'utilsateur de saisir un mot 
# attention, l'utilsateur est en droit, de mettre n'importe quoi à ce stade
# il faudrait vérifier à la saisie qu'il s'agisse bien  d'un seul mot et sans chiffre
puts 'Saisir votre mot'
word = gets.chomp.downcase

# on affiche en fonction du retour de la méthode (vrai / faux) 
puts palindrome?(word) ? "Le mot #{word} est un palidrome" : "Le mot #{word} n'est pas un palidrome"

# autre méthode
#if palidrome?(word)
#  puts "Le mot #{word} est un palidrome"
#else
#  puts "Le mot #{word} n'est pas un palidrome"
#end

# autre méthode
#result  = "Le mot #{word} n'est pas un palidrome
#result = "Le mot #{word} est un palidrome" if palidrome?(word) == true 
#puts result