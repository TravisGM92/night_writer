class BinaryToBraille

  attr_reader :binary, :cell_1, :cell_2, :cell_3,
              :cell_4, :cell_5, :cell_6
  def initialize
    @binary = EnglishToBinary.new
    binary.dictionary
    @cell_1 = "."
    @cell_2 = "."
    @cell_3 = "."
    @cell_4 = "."
    @cell_5 = "."
    @cell_6 = "."
  end

  def render_braille_cell
    "\n#{@cell_1}#{@cell_4}\n#{@cell_2}#{@cell_5}\n#{@cell_3}#{@cell_6}\n"
  end

  def to_braille(binary_message)
     binary_message[0].chars[0] == "1" ? @cell_1 = "0" : @cell_1 = "."
     binary_message[0].chars[1] == "1" ? @cell_2 = "0" : @cell_2 = "."
     binary_message[0].chars[2] == "1" ? @cell_3 = "0" : @cell_3 = "."
     binary_message[0].chars[3] == "1" ? @cell_4 = "0" : @cell_4 = "."
     binary_message[0].chars[4] == "1" ? @cell_5 = "0" : @cell_5 = "."
     binary_message[0].chars[5] == "1" ? @cell_6 = "0" : @cell_6 = "."
  end

end
