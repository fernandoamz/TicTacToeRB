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
my_array = Array.new(size)

for i in 0..size
    my_array[i] = Array.new(size)
    for j in 0..size
        my_array[i][j] = 0
    end
end

puts my_array

puts "¿Qué posición deseas modificar en X?"
positionX = Integer(gets.chomp)

puts "¿Qué posición deseas modificar en X?"
positionY = Integer(gets.chomp)

puts "¿Qué valor deseas agregar X ó O ?"
response = gets.chomp

my_array[positionX][positionY] = response

print my_array[0] 
puts "\n"
print my_array[1] 
puts "\n"
print my_array[2] 
puts "\n"