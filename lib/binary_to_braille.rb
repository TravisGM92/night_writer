class BinaryToBraille

  attr_reader :binary
  def initialize
    @binary = EnglishToBinary.new
    binary.dictionary
  end

  def render_braille_cell

  end

  def to_braille(binary_message)
    binary_message[0].chars[0..2]
  end

end
