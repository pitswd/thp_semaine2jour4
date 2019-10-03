def signup
    puts "Choisis un mot de passe :"
    print ">"
    return gets.chomp
end

def login (var_signup)
    puts "Mot de passe stp ?"
    print ">"
    input = gets.chomp
    if input == var_signup
        puts "Bien ouej gros, tu peux rentrer ;)"
        welcome_screen
    else 
        puts "Essaye encore kokin"
        login (var_signup)
    end
end

def welcome_screen
    puts "Bienvenue dans le coffre secret"
    puts "."
    puts "."
    puts "."
    puts "Bip Boop"

end

def perform 
    var_signup = signup
    input = login (var_signup)
end

perform