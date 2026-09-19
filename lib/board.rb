# frozen_string_literal: true

# The board class, sets up the board and allows a user to display
class Board
  attr_reader :grid

  def initialize
    @grid = [
      [' ', ' ', ' '],
      [' ', ' ', ' '],
      [' ', ' ', ' ']
    ]
  end

  def display
    @grid.each_with_index do |row, index|
      puts " #{row.join(' | ')}"

      puts '---+---+---' if index < 2
    end
  end
end

# This will be the movement module that gets used by the player and bot
module Movement
  def move(board, row, column, marker)
    if board.grid[row][column] == ' '
      board.grid[][] = marker.to_s
      true
    else
      false
    end
  end
end
