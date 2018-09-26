require 'rspec'
require_relative './lib/tictactoe.rb'
require 'stringio'

def capture_name
 $stdin.gets.chomp
end

RSpec.describe Tictactoe do 
    describe '#play' do
        before do
            $stdin = StringIO.new("s\n1\n2\n3\n4\n5\n6\n7\n8\n9")
        end
        
        after do
            $stdin = STDIN
        end

        context 'It a base of tictacgame' do
            it 'this method have a test winner' do                                
                game = Tictactoe.new  
                game.play 
            end
        end
    end
end
