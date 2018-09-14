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
my_reference = [[1,2,3],[4,5,6],[7,8,9]]

# Armamos array de referencia
for i in 0..size
    print my_reference[i] 
    puts "\n"
end 

# Llenamos matriz con 0
for m in 0..size
    my_array[m] = Array.new(size)
    for j in 0..size
        my_array[m][j] = 0
    end
end

def getPosition(position, my_reference)
    for f in 0..my_reference.size
        for g in 0..my_reference.size
            if my_reference[f][g] == position
                return [f],[g]
            end
        end
    end
end

for i in 0...9
    if i % 2 == 0
        puts "¿Posición jugador 1?"
        position = Integer(gets.chomp)
        
        posiciones = getPosition(position, my_reference)

        x = posiciones[0][0] 
        y = posiciones[1][0]

        if my_array[x][y] == "X" || my_array[x][y] == "O"
            puts "esta posicion ya esta en uso"
        else
            my_array[x][y] = jugador1
        end
    end

    if i % 2 != 0
        puts "¿Posición jugador 2?"
        position = Integer(gets.chomp)
        
        posiciones = getPosition(position, my_reference)

        x = posiciones[0][0] 
        y = posiciones[1][0]

        if my_array[x][y] == "X" || my_array[x][y] == "O"
            puts "esta posicion ya esta en uso"
        else
            my_array[x][y] = jugador2
        end
    end

    for l in 0..my_array.size
        print my_array[l] 
        puts "\n"
    end 
    
    puts i
end

def evaluarGanador
    
end