def display_options(text)
   puts "*"*80
   puts text
   puts "*"*80
end


def questions(text,arr)
    loop do 
        display_options(text)
        option = gets.chomp
        arr.each do | a |
            if a == option.downcase
                return a
            end
        end
    end
end


friends = ["shu", "jiro",  "kluke", "zola", "marumaro"]
shadowsA = ["dragon", "phoenix", "bat", "minotaur", "tiger"]
shadowsB = ["dino", "rex", "bear", "eagle", "velox"]
level   = ["a","b"]

puts " 



  ___ _   _   _ ___    ___  ___    _   ___  ___  _  _ 
 | _ ) | | | | | __|   |   \| _ \  /_\ / __|/ _ \| \| |
 | _ \ |_| |_| | _|    | |) |   / / _ \ (_ | (_) | .` |
 |___/____\___/|___|   |___/|_|_\/_/ \_\___|\___/|_|\_|


                                                       "


puts "Welcome to BLUE DRAGON!"
puts "The story of Blue Dragon focuses on five friends."
puts "They travel across the world to confront Nene, the evil ruler of the Grand Kingdom."
puts ""

mode = questions("Select your level:  Beginner (B) or Advance (A) or ctrl C to exit the game.", level) 
player = questions("Select one of the five friends (Shu, Jiro, Kluke, Zola, and Marumaro) to begin the game or ctrl C to exit", friends)
mode == "a" ? magic = questions("Use one of the following shadows (Dragon, Phoenix, Bat, Minotaur, Tiger) to begin the game or ctrl C to exit", shadowsA) : magic = questions("Use one of the following shadows (Dino, Rex, Bear, Eagle, Velox) to begin the game or ctrl C to exit", shadowsB)

case mode
when "a"
     puts (player == "shu" && magic == "dragon") ?  "#{player.capitalize} using Magic #{magic.capitalize} has been defeated!" :  "#{player.capitalize} using Magic #{magic.capitalize} is a winner. Congrats!!!"
when "b"
     puts (player == "zola" && magic == "bat") ?  "#{player.capitalize} using Magic #{magic.capitalize} has been defeated!" :  "#{player.capitalize} using Magic #{magic.capitalize} is a winner. Congrats!!!"
end