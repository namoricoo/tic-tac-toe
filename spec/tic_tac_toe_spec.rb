# Documentation
require 'spec_helper'
require_relative '../lib/tic_tac_toe.rb'
describe TicTacToe do
  it 'initialize the tic tac toe class in a Matrix' do
    TicTacToe.new
  end
  it 'places an x at the (x,y) location' do
    tic_tac_toe = TicTacToe.new
    x_position = 0
    y_position = 0
    output = Matrix[
                      [1, 0, 0],
                      [0, 0, 0],
                      [0, 0, 0]
                    ]
    tic_tac_toe.place_x_in_matrix(x_position,y_position)
  end
end
