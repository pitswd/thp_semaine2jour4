def wtf_pyramid
    puts "Bonjour, combien d'étages veux-tu dans ta pyramide ? Nombre impair seulement."
    print ">"
    input = gets.chomp.to_i
    if (input%2==0)
        puts "Nombre impair SEULEMENT !"
        wtf_pyramid
    else
        1.upto(input/2+1) do |i|
            spaces = " " * (input-i)
            dots   = "#" * (i*2-1)
            puts spaces + dots
        end

        0.upto(input/2+1) do |i|
            dots = "#" * (input/2-i) * 2
            spaces = " " * (i + input/2+1)
            puts spaces + dots
        end
    end
end

wtf_pyramid