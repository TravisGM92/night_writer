class Translator

  attr_reader :encoding
  def initialize
    @encoding = {}
  end

  def dictionary
    # @encoding[' '] = ["..", "..", ".."]
    @encoding['a'] = ["0.", "..", ".."]
    @encoding['b'] = ["0.", "0.", ".."]
    @encoding['c'] = ["..", "00", ".."]
    @encoding['d'] = ["00", ".0", ".."]
    @encoding['e'] = ["0.", ".0", ".."]
    @encoding['f'] = ["00", "0.", ".."]
    @encoding['g'] = ["00", "00", ".."]
    @encoding['h'] = ["0.", "00", ".."]
    @encoding['i'] = [".0", "0.", ".."]
    @encoding['j'] = [".0", "00", ".."]
    @encoding['k'] = ["0.", "..", "0."]
    @encoding['l'] = ["0.", "0.", "0."]
    @encoding['m'] = ["00", "..", "0."]
    @encoding['n'] = ["00", ".0", "0."]
    @encoding['o'] = ["0.", ".0", "0."]
    @encoding['p'] = ["00", "0.", "0."]
    @encoding['q'] = ["00", "00", "0."]
    @encoding['r'] = ["0.", "00", "0."]
    @encoding['s'] = [".0", "0.", "0."]
    @encoding['t'] = [".0", "00", "0."]
    @encoding['u'] = ["0.", "..", "00"]
    @encoding['v'] = ["0.", "0.", "00"]
    @encoding['w'] = [".0", "00", ".0"]
    @encoding['x'] = ["00", "..", "00"]
    @encoding['y'] = ["00", ".0", "00"]
    @encoding['z'] = ["0.", ".0", "00"]
    @encoding[' '] = ["..", "..", ".."]
    @encoding['!'] = ["..", "00", "0."]
    @encoding['.'] = ["..", "00", ".0"]


    @encoding
  end

  def encode(message)
    first_row = message.chars.map do |letter|
       "#{@encoding[letter][0]} "
    end
    second_row = message.chars.map do |letter|
       "#{@encoding[letter][1]} "
    end
    third_row = message.chars.map do |letter|
     "#{@encoding[letter][2]} "
    end
    "#{first_row.join}\n#{second_row.join}\n#{third_row.join}\n"
  end
end
