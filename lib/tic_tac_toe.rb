require 'matrix'
# Creating the tic tac toe class
class TicTacToe
  def initialize
    @one_x = 'x'
    @one_o = 'o'
    @matrix = Matrix[
                      [0, 0, 0],
                      [0, 0, 0],
                      [0, 0, 0]
                    ]
  end

  def place_x_in_matrix(x_position, y_position)
    place_in_matrix(x_position, y_position, @one_x)
  end

  def place_o_in_matrix(x_position, y_position)
    place_in_matrix(x_position, y_position, @one_o)
  end

  def place_in_matrix(x_position, y_position, value)
    @matrix = Matrix.build(3, 3) do |row, col|
      if (row == x_position) && (col == y_position)
        value
      else
        @matrix[x_position, y_position]
      end
    end
    @matrix
  end

  def player_o_status(input_matrix)
    if horizontal_pattern(input_matrix, 'o')
      'win'
    elsif vertical_pattern(input_matrix, 'o')
      'win'
    elsif diagonal_pattern(input_matrix, 'o')
      'win'
    else
      'none'
    end
  end

  def horizontal_pattern(input_matrix, pattern_string)
    input_array = input_matrix.to_a
    input_array.each do |value|
      temp_string = value.join('')
      return true if temp_string =~ /#{pattern_string}{3}/
    end
    false
  end

  def  vertical_pattern(input_matrix, pattern_string)
    input_array = input_matrix.transpose.to_a
    input_array.each do |value|
      temp_string = value.join('')
      return true if temp_string =~ /#{pattern_string}{3}/
    end
    false
  end

  def diagonal_pattern(input, pattern_string)
    left_diagonal = "#{input[0, 0]}#{input[1, 1]}#{input[2, 2]}"
    right_diagonal = "#{input[2, 0]}#{input[1, 1]}#{input[0, 2]}"
    left_diagonal_bool = left_diagonal =~ /#{pattern_string}{3}/
    right_diagonal_bool = right_diagonal =~ /#{pattern_string}{3}/
    left_diagonal_bool ||  right_diagonal_bool
  end

  def print_table
    @matrix.to_a.each do |value|
      puts value.inspect
    end
  end
end
