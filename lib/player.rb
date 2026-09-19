require_relative 'movement'

class Player
  include Movement
  attr_reader :name, :marker

  def initialize(name, marker)
    @name = name
    @marker = marker
  end

  def take_turn(board)
  end
end
