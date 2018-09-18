require 'rspec'
require_relative './lib/tictactoe.rb'


RSpec.describe Calculator do 
    describe '#iniciar'
        it 'start the game' do
            tictactoe = Tictactoe.new
            #expect(calc.sum(2,2)).to eq 4
        end
    end
end