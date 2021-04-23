class Player
    attr_accessor :name, :piece

    def initialize (name="testname", piece, board)
        @name = name
        @piece = piece
        @board = board
    end


    def get_coordinates
        loop do
            coords = ask_coordinates
        
            if check_format(coords)
                if bound_coords(coords)
                    if @board.add_piece(coords, @piece)
                            break
                    end
                end
            end
         end

    end


    def ask_coordinates
        puts("#{@name}(#{@piece}), enter your co-ordinates in the form x,y:")
        coords = gets.strip.split(",").map(&:to_i)
        # coords.map{|n| n.to_i} 
    end

    def check_format(coords)
    
        if coords.is_a?(Array) && coords.size == 2
            true
        else
            puts "Your coordinates are in the improper format!"
        end
    end

    def bound_coords(coords)
        begin
            raise 'error' if !((0..2).include?(coords[0]) && (0..2).include?(coords[1]))
        rescue 
            puts ("Coordinates are out of bound, please tryagain")
        else
            true   
        end
        

    end
end
        

