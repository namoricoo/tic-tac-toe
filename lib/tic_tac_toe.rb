require 'matrix'
# Creating the tic tac toe class
class TicTacToe
  def initialize
    # We use 1 for x, 2 is for o
    @one_x = 'x'
     @one_o = 'o'
    @matrix = Matrix[
                      [0, 0, 0],
                      [0, 0, 0],
                      [0, 0, 0]
                    ]
  end

  def place_x_in_matrix(x_position, y_position)
    @matrix = Matrix.build(3, 3) do |row, col|
      if (row == x_position) && (col == y_position)
        @one_x
      else
        @matrix[x_position, y_position]
      end
    end
    @matrix
  end

  def place_o_in_matrix(x_position, y_position)
    @matrix = Matrix.build(3, 3) do |row, col|
      if (row == x_position) && (col == y_position)
        @one_o
      else
        @matrix[x_position, y_position]
      end
    end
    @matrix
  end

  def print_table
    @matrix.to_a.each do |value|
      puts value.inspect
    end
  end
end
