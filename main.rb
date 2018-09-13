=begin 

require 'gosu'

class Tutorial < Gosu::Window 
    def initialize
        super 640, 480
        self.caption = "TicTacToe"
    end
  
    def draw

    end
end

Tutorial.new.show
=end

size = 2
jugador1 = "X"
jugador2 = "O"

my_array = Array.new(size)

for i in 0..size
    my_array[i] = Array.new(size)
    for j in 0..size
        my_array[i][j] = 0
    end
end

for i in 0..9 

    if i % 2 != 0
        puts i 

        puts "Posición en X Jugador 1: "
        positionX = Integer(gets.chomp)    

        puts "Posición en Y Jugador 1: "
        positionY = Integer(gets.chomp) 
        
        my_array[positionX][positionY] = jugador1

        print my_array[0] 
        puts "\n"
        print my_array[1] 
        puts "\n"
        print my_array[2] 
        puts "\n"
    end

    if i % 2 == 0
        puts "Posición en X Jugador 2: "
        positionX = Integer(gets.chomp)    

        puts "Posición en Y Jugador 2: "
        positionY = Integer(gets.chomp) 
        
        my_array[positionX][positionY] = jugador2

        print my_array[0] 
        puts "\n"
        print my_array[1] 
        puts "\n"
        print my_array[2] 
        puts "\n"
    end
end