
=begin
    *** Juego de TicTacToe ***
    
    createdby: Fernando Amezcua Alcantar
    TODO: 

=end

class Tictactoe

    # Armamos array de referencia
    def tableroReferencia(my_reference)
        for i in 0..2
            print my_reference[i] 
            puts "\n"
        end 
    end 

    # Obtener posiciones del tablero de referencias
    def getPosition(position, my_reference)
        for f in 0..my_reference.size
            for g in 0..my_reference.size
                if my_reference[f][g] == position
                    return [f],[g]
                end
            end
        end
    end

    def evaluarGanador(jugador, my_array, i)
        
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

        if i === 9
            puts "*************************************"
            puts "************   EMPATE   *************"
            puts "*************************************"
            play
        end

    end

    def tableros(my_array, my_reference)
        puts "\n"
        puts "----- TABLERO ACTUAL ------"

        for l in 0..my_array.size
            print my_array[l] 
            puts "\n"
        end 
        
        #puts i
        puts "-------- REFERENCIA --------"
            tableroReferencia(my_reference)
        puts "----------------------------"
    end
    
    # Clase que inicia el juego 
    def game(respuesta)

        size = 2
        jugador1 = "X"
        jugador2 = "O"

        my_array = Array.new(size)
        my_reference = [[1,2,3],[4,5,6],[7,8,9]]

        tableroReferencia(my_reference)
         
        # Llenamos matriz con 0
        for m in 0..size
            my_array[m] = Array.new(size)
            for j in 0..size
                my_array[m][j] = 0
            end
        end

        # Este ciclo hace que las preguntas inicien
        i = 1
        while i <= 9 do
            
            #Los numeros primos son para el jugador 1
            if i % 2 != 0
                puts "¿Posición jugador 1?"
                
                if respuesta == "test"
                    position = rand(1..12)
                else
                    position = gets.to_i
                end

                if position.between?(1,9)
                    posiciones = getPosition(position, my_reference)

                    x = posiciones[0][0] 
                    y = posiciones[1][0]

                    if my_array[x][y] == "X" || my_array[x][y] == "O"
                        puts "esta posicion ya esta en uso"
                    else
                        my_array[x][y] = jugador1

                        # Mostramos tablero con los resultados
                        tableros(my_array, my_reference)

                        i += 1
                    end

                    if evaluarGanador(jugador1, my_array, i) == jugador1
                        tableros(my_array, my_reference)
                        puts "*************************************"
                        puts "***** EL GANADOR ES #{jugador1} *****"
                        puts "*************************************"
                        play
                        break
                    end
                else
                    puts "SELECCIONA UN NÚMERO DEL 1 AL 9"
                end
            end

            #Los numeros pares son para el jugador 1
            if i % 2 == 0
                puts "¿Posición jugador 2?"
               
                if respuesta == "test"
                    position = rand(1..12)
                else
                    position = gets.to_i
                end

                if position.between?(1,9)
                    posiciones = getPosition(position, my_reference)

                    x = posiciones[0][0] 
                    y = posiciones[1][0]

                    if my_array[x][y] == "X" || my_array[x][y] == "O"
                        puts "esta posicion ya esta en uso"
                    else
                        my_array[x][y] = jugador2
                        
                        # Mostramos tablero con los resultados
                        tableros(my_array, my_reference)

                        i += 1
                    end

                    if evaluarGanador(jugador2, my_array, i) == jugador2
                        tableros(my_array, my_reference)
                        puts "*************************************"
                        puts "***** EL GANADOR ES #{jugador2} *****"
                        puts "*************************************"
                        play
                        break
                    end
                else
                    puts "SELECCIONA UN NÚMERO DEL 1 AL 9"
                end
            end            
        end

        play
    end

    def play
        
        puts "¿Deseas iniciar el juego (s/n/test): "
        respuesta = gets.chomp 
                       
        case respuesta 
        when "n"
            puts "¡No te vayas :(!"
            return
        when "s", "test"
            Tictactoe.new.game(respuesta)
        else 
            puts "Debes seleccionar al menos una opción"
            play
        end

    end
end

