require './lib/english_to_binary'
require './lib/cell'

class BinaryToBraille
  attr_reader :cells, :numbers

  def initialize(numbers)
    @cells = Cell.new(numbers)
    @cells.top_row_binary_to_braille
    @cells.middle_row_binary_to_braille
    @cells.bottom_row_binary_to_braille
    @cells.all_rows
  end

  def show_braille_text
    @cells.all_rows
  end
end
