class Board

    def initialize
        @board = Array.new(3){Array.new(3)}
    end
    
    def show_board
            puts
            for i in 1..24
                print("-")
            end
            puts
            @board.each do |row|
                # print("#{row}")
                print("|  ")
               
                row.each do |cell|
                    @cellpos = @board.index(cell)
                    # x = "1,2"
                    # print(cell.to_s)
                    cell.nil? ? print("-")  : print(cell.to_s) #to string
                    print("   |   ")
                    
                    
                end
                puts
                for i in 1..24
                    print("-")
                end
                puts
              
                
            end
          
    end

    def add_piece ( coords, piece)
        if cell_available(coords)

            @board[coords[0]][coords[1]] =piece

        else

        puts("The cell is already filled!!")
        end
        
    end

    def cell_available(coords)
        if @board[coords[0]][coords[1]].nil?
            true
        else
            false
        end
    end



    # ======================check win or draw ============================

    
    def winning_combination?(piece)


        winning_diagonal?(piece)   || 
        winning_horizontal?(piece) || 
        winning_vertical?(piece)
    end

    # winning_diagonal?
    def winning_diagonal?(piece)

        diagonals.any? do |diag|
            diag.all?{|cell| cell == piece }
        end
    end

    # winning_vertical?
    def winning_vertical?(piece)

        verticals.any? do |vert|
            vert.all?{|cell| cell == piece }
        end
    end


    def winning_horizontal?(piece)

        horizontals.any? do |horz|
            horz.all?{|cell| cell == piece }
        end
    end


    def diagonals

        [[ @board[0][0],@board[1][1],@board[2][2] ],[ @board[2][0],@board[1][1],@board[0][2] ]]
    end

    # verticals
    def verticals

        @board
    end

    # horizontals
    def horizontals

        horizontals = []
        3.times do |i|
            horizontals << [@board[0][i],@board[1][i],@board[2][i]]
        end
        horizontals
    end


    def full?

        @board.all? do |row|
            row.none?(&:nil?)
        end
    end

end

