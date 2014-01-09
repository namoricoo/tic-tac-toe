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
    result = ''
    if horizontal_pattern(input_matrix,'o')
      result = 'win'
    elsif vertical_pattern(input_matrix,'o')
      result = 'win'
    else
     result = 'none'   
    end
    result
  end

  def horizontal_pattern(input_matrix,pattern_string)
    input_array = input_matrix.to_a
    input_array.each do |value|
      temp_string = value.join('')
      return true if temp_string =~ /#{pattern_string}{3}/      
    end
    false
  end

   def  vertical_pattern(input_matrix,pattern_string)
    input_array = input_matrix.transpose.to_a
    input_array.each do |value|
      temp_string = value.join('')
      puts '------------'
      puts "temp_string= #{temp_string}"
      return true if temp_string =~ /#{pattern_string}{3}/   
    end
    false
  end

  def print_table
    @matrix.to_a.each do |value|
      puts value.inspect
    end
  end
end
