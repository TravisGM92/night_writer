require './lib/english_to_binary'
class Cell

  attr_reader :binary, :dot_1, :dot_2, :dot_3, :dot_4,
              :dot_5, :dot_6, :message

  def initialize(message)
    @binary = EnglishToBinary.new(message)
    @dot_1 = "."
    @dot_2 = "."
    @dot_3 = "."
    @dot_4 = "."
    @dot_5 = "."
    @dot_6 = "."
    @message = message
  end

  def top_row_binary_to_braille(message)
    @binary.encode_to_binary.map do |numbers|
      numbers[0] == "1" ? @dot_1 = "0" : @dot_1 = "."
      numbers[1] == "1" ? @dot_4 = "0" : @dot_4 = "."
       "#{@dot_1}#{@dot_4} "
    end
  end

  def middle_row_binary_to_braille(message)

    @binary.encode_to_binary.map do |numbers|
      numbers[2] == "1" ? @dot_2 = "0" : @dot_2 = "."
      numbers[3] == "1" ? @dot_5 = "0" : @dot_5 = "."
       puts "#{@dot_2}#{@dot_5} "
    end
  end

  def bottom_row_binary_to_braille(message)
    @binary.encode_to_binary.map do |numbers|
      numbers[4] == "1" ? @dot_3 = "0" : @dot_3 = "."
      numbers[5] == "1" ? @dot_6 = "0" : @dot_6 = "."
      puts  "#{@dot_3}#{@dot_6} "
    end
  end

  def all_rows
    top_row_binary_to_braille(message)
    puts " "
    middle_row_binary_to_braille(message)
    puts " "
    bottom_row_binary_to_braille(message)
    puts " "
  end
end
