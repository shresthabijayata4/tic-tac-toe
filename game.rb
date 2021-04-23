class Game
    def initialize

        @name = Getname.new
        @board = Board.new     
        
    end
    def play

        @name.getname
        @player1 = Player.new(@name.player1, "X", @board)
        @player2 = Player.new(@name.player2, "O", @board)
        @current_player = @player1
        loop do
            @board.show_board

            @current_player.get_coordinates

           
            break if check_gameover
            switch_Players
            
        end
        show_finalboard
        
    end

    def check_gameover

       check_win || check_draw
    end


    def check_win
 
        if @board.winning_combination?(@current_player.piece)
       
            puts "Congratulations #{@current_player.name}, you win!"
            true
        else
            false
        end
    end


    def check_draw
    
        if @board.full?
  
            puts "You've drawn..."
            true
        else
            false
        end
    end

    def switch_Players
        if @current_player == @player1
            @current_player = @player2
        else
            @current_player = @player1
        end

    end
    def show_finalboard
        @board.show_board
    end

end
