

class Getname
    attr_accessor :player1, :player2
    def initialize
        @player1 = player1
        @player2 = player2
    end
    def getname
        puts "Enter the name of player1 :"
        @player1 = gets.chomp
        puts"#{@player1} symbol is X"
        puts " Enter the name of player2 :"
        @player2 = gets.chomp
        puts"#{@player2} symbol is O"

    end
end