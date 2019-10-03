def ask_height
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    print ">"
    height = gets.to_i
    return height
end

def full_pyramid (height)
    height.times do |i|
      puts ' ' * (height - i) + '#' * (2 * i + 1)
    end
  end

def wtf_pyramid (height)
    height.times do |i|
      puts ' ' * (height - i) + '#' * (2 * i + 1)
    end
  end

def perform
    height = ask_height
    wtf_pyramid (height)
end

perform