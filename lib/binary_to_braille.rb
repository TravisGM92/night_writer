require './lib/english_to_binary'
require './lib/cell'

class BinaryToBraille

  attr_reader :cells, :message

  def initialize(message)
    # @binary = EnglishToBinary.new
    @cells = Cell.new(message)
    @message = message
  end

  def show_braille_text
    @cells.all_rows
  end
end
