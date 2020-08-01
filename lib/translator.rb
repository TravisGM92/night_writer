class Translator

  attr_reader :encoding
  def initialize
    @encoding = {}
  end

  def dictionary
    @encoding[' '] = [". .", ". .", ". ."]
    @encoding['a'] = ["0 .", ". .", ". ."]
    @encoding['b'] = ["0 .", "0 .", ". ."]
    @encoding['c'] = [". .", "0 0", ". ."]
    @encoding['d'] = ["0 0", ". 0", ". ."]
    @encoding['e'] = ["0 .", ". 0", ". ."]
    @encoding['f'] = ["0 0", "0 .", ". ."]
    @encoding['g'] = ["0 0", "0 0", ". ."]
    @encoding['h'] = ["0 .", "0 0", ". ."]
    @encoding['i'] = [". 0", "0 .", ". ."]
    @encoding['j'] = [". 0", "0 0", ". ."]
    @encoding['k'] = ["0 .", ". .", "0 ."]
    @encoding['l'] = ["0 .", "0 .", "0 ."]
    @encoding['m'] = ["0 0", ". .", "0 ."]
    @encoding['n'] = ["0 0", ". 0", "0 ."]
    @encoding['o'] = ["0 .", ". 0", "0 ."]
    @encoding['p'] = ["0 0", "0 .", "0 ."]
    @encoding['q'] = ["0 0", "0 0", "0 ."]
    @encoding['r'] = ["0 .", "0 0", "0 ."]
    @encoding['s'] = [". 0", "0 .", "0 ."]
    @encoding['t'] = [". 0", "0 0", "0 ."]
    @encoding['u'] = ["0 .", ". .", "0 0"]
    @encoding['v'] = ["0 .", "0 .", "0 0"]
    @encoding['w'] = [". 0", "0 0", ". 0"]
    @encoding['x'] = ["0 0", ". .", "0 0"]
    @encoding['y'] = ["0 0", ". 0", "0 0"]
    @encoding['z'] = ["0 .", ". 0", "0 0"]
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
    "#{first_row.join}\n#{second_row.join}\n#{third_row.join}"
  end
end
