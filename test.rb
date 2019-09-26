require 'rspec'
require_relative './lib/tictactoe.rb'

RSpec.describe Tictactoe do 
    describe '#play' do
        context 'It a base of tictacgame' do
            it 'this method have a test winner' do                                
                game = Tictactoe.new  
                allow($stdin).to receive(:gets).and_return('s')
                name = $stdin.gets
                game.play 
            end
        end
    end
end
