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
                      ['x', 0, 0],
                      [0, 0, 0],
                      [0, 0, 0]
                    ]
    tic_tac_toe.place_x_in_matrix(x_position, y_position).should == output
  end
  it 'places an o at the (x,y) location' do
    tic_tac_toe = TicTacToe.new
    x_position = 0
    y_position = 0
    output = Matrix[
                      ['o', 0, 0],
                      [0, 0, 0],
                      [0, 0, 0]
                    ]
    tic_tac_toe.place_o_in_matrix(x_position, y_position).should == output
  end
  it "returns string 'win' if you win" do
    tic_tac_toe = TicTacToe.new
    output = 'win'
    input = Matrix[
                    ['o', 'o', 'o'],
                    [0, 0, 0],
                    [0, 0, 0]
                  ]
    tic_tac_toe.player_o_status(input).should == output         
  end
   it "returns string 'win' if you win" do
    tic_tac_toe = TicTacToe.new
    output = 'win'
    input = Matrix[
                    [0, 0, 0],
                    ['o', 'o', 'o'],
                    [0, 0, 0]
                  ]
    tic_tac_toe.player_o_status(input).should == output         
  end
  it "returns string 'win' if you win" do
    tic_tac_toe = TicTacToe.new
    output = 'win'
    input = Matrix[
                    [0, 0, 0],
                    [0, 0, 0],
                    ['o', 'o', 'o']
                  ]
    tic_tac_toe.player_o_status(input).should == output         
  end
  it "returns string 'win' if you 1rst column vertical win" do
    tic_tac_toe = TicTacToe.new
    output = 'win'
    input = Matrix[
                    ['o', 0, 0],
                    ['o', 0, 0],
                    ['o', 0, 0]
                  ]
    tic_tac_toe.player_o_status(input).should == output         
  end
end
