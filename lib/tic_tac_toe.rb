require 'matrix'
# Creating the tic tac toe class
class TicTacToe
  def initialize
    # We use 1 for x, 2 is for o
    @matrix = Matrix[
                      [0, 0, 0],
                      [0, 0, 0],
                      [0, 0, 0]
                    ]
  end
end
