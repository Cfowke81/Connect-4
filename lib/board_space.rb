require 'colorize'
require_relative './piece'

class BoardSpace
  attr_accessor :piece

  def initialize
    @piece = nil
  end

  def occupied?
    !@piece.nil?
  end

  def empty?
    @piece.nil?
  end
end
