require './lib/english_to_binary'
require './lib/cell'

class BinaryToBraille

  attr_reader :cells, :message

  def initialize(numbers)
    @cells = Cell.new(numbers)
    @message = message
  end

  def show_braille_text
    @cells.all_rows
  end
end

# message = 'travis'
# encoding = EnglishToBinary.new(message)
# encode = BinaryToBraille.new(message)
#
# p encode.cells.all_rows
