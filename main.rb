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
def tableroReferencia(size, my_reference)
    for i in 0..size
        print my_reference[i] 
        puts "\n"
    end 
end 

tableroReferencia(size, my_reference)

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

def evaluarGanador(jugador, my_array)
    
    # EVALUAR GANADOR HORIZONTAL
    # Linea 1
    if my_array[0][0] != 0 && my_array[0][1] != 0 && my_array[0][2] != 0
        if my_array[0][0] == my_array[0][1] &&  my_array[0][1] == my_array[0][2]
            return jugador
        end
    end

    # Linea 2
    if my_array[1][0] != 0 && my_array[1][1] != 0 && my_array[1][2] != 0
        if my_array[1][0] == my_array[1][1] &&  my_array[1][1] == my_array[1][2]
            return jugador
        end
    end

    # Linea 3
    if my_array[2][0] != 0 && my_array[2][1] != 0 && my_array[2][2] != 0
        if my_array[2][0] == my_array[2][1] &&  my_array[2][1] == my_array[2][2]
            return jugador
        end
    end

    # VALIDAR EN VERTICAL
    # Linea 1
    if my_array[0][0] != 0 && my_array[1][0] != 0 && my_array[2][0] != 0
        if my_array[0][0] == my_array[1][0] &&  my_array[1][0] == my_array[2][0]
            return jugador
        end
    end

    # Linea 2
    if my_array[0][1] != 0 && my_array[1][1] != 0 && my_array[2][1] != 0
        if my_array[0][1] == my_array[1][1] &&  my_array[1][1] == my_array[2][1]
            return jugador
        end
    end

    # Linea 3
    if my_array[0][2] != 0 && my_array[1][2] != 0 && my_array[2][2] != 0
        if my_array[0][2] == my_array[1][2] &&  my_array[1][2] == my_array[2][2]
            return jugador
        end
    end

    #CRUCES
    #DERECHA
    if my_array[0][0] != 0 && my_array[1][1] != 0 && my_array[2][2] != 0
        if my_array[0][0] == my_array[1][1] &&  my_array[1][1] == my_array[2][2]
            return jugador
        end
    end

     #IZQUIERDA
     if my_array[0][2] != 0 && my_array[1][1] != 0 && my_array[2][0] != 0
        if my_array[0][2] == my_array[1][1] &&  my_array[1][1] == my_array[2][0]
            return jugador
        end
    end
end

def tableros(my_array, size, my_reference)
    puts "\n"
    puts "-----TABLERO ACTUAL-----"

    for l in 0..my_array.size
        print my_array[l] 
        puts "\n"
    end 
    
    #puts i
    puts "----REFERENCIA----"
    puts tableroReferencia(size, my_reference)
    puts "-------------"
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

        if evaluarGanador(jugador1, my_array) == jugador1
            tableros(my_array, size, my_reference)
            puts "EL GANADOR ES #{jugador1}"
            break
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

        if evaluarGanador(jugador2, my_array) == jugador2
            tableros(my_array, size, my_reference)
            puts "EL GANADOR ES #{jugador2}"
            break
        end
    end

    tableros(my_array, size, my_reference)
end
