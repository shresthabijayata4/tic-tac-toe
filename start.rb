# Start the game
# Get the player name and set the symbol
# loop do
#     render the board
#     ask for coordinates with player
#     check victory/lose || draw || continue??
#     if victory/lose || draw ??
#         stop loop 
#         and show message 
#     else
#         switch the player

# end

require_relative "./game"
require_relative"./player.rb"
require_relative"./board.rb"
require_relative"./getname.rb"

def start_game
    t = Game.new
    t.play
    play_again

end

def play_again
    puts "If you like to play the game again, type 'y'. 
    If not, type 'n'. "
    input = gets.chomp!.downcase

    if input == 'y'
        start_game
    else
        puts "Thank you! for playing."
    end
end


start_game