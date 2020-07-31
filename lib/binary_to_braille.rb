class BinaryToBraille

  attr_reader :binary
  def initialize
    @binary = EnglishToBinary.new
    binary.dictionary
  end

  def to_braille(binary_message)
    binary_message
  end

end
