def intro
    puts "Bienvenue dans LES ESCALIERS."
    puts "Dans ce jeu interactive (bientôt dispo en VR), tu dois... Monter des marches. Bonne chance :)"
end

def start
    puts "Pour lancer le dé, tapez 'go'"
    print ">"
    input = gets.chomp
    if input == "go"
        game (throwdice)
    else 
        puts "Lancé raté - commande non reconnue"
        start
    end
end

def throwdice
    dice = [1, 2, 3, 4, 5, 6].sample
    puts "#{dice}"
    return dice
end

def game (var_dice)
    dice = var_dice
    result = 0
    if dice == 1
        puts "Vous reculer d'une marche. Vous êtes maintenant à la marche #{result}."
        result = result - 1

    elsif dice == 2
        puts "Vous ne bougez pas. Vous êtes toujours à la marche #{result}."
        result
        
    elsif dice == 3
        puts "Vous ne bougez pas. Vous êtes toujours à la marche #{result}."
        result

    elsif dice == 4
        puts "Vous ne bougez pas. Vous êtes toujours à la marche #{result}."
        result

    elsif dice == 5
        puts "Vous avancer d'une marche ! Vous êtes maintenant à la marche #{result}."
        result = result + 1

    else dice == 6
        puts "Vous avancer d'une marche ! Vous êtes maintenant à la marche #{result}."
        result = result + 1
    end
end

def victory
    puts "Bravo, quel champion ! Tu as monté 10 marches comme un grand <3"
end

def perform
    intro
    start
    game(throwdice)
end

perform