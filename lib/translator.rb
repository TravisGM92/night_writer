class Translator

  attr_reader :encoding, :upper_case, :upper_case_letters, :contraction
  def initialize
    @encoding = {}
    @upper_case = ('A'..'Z').to_a
    @upper_case_letters = {}
    @contraction = {}
  end

  def dictionary
    @encoding['a'] = ["0.", "..", ".."]
    @encoding['b'] = ["0.", "0.", ".."]
    @encoding['c'] = ["00", "..", ".."]
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
    @encoding[','] = ["..", "0.", ".."]
    @encoding["'"] = ["..", "..", "0."]
    @encoding["-"] = ["..", "..", "00"]
    @encoding[":"] = ["..", "00", ".."]
    @encoding[";"] = ["..", "0.", "0."]
    @encoding["?"] = ["..", "0.", "00"]
    @encoding["*"] = ["..", ".0", "0."]
    @encoding['"'] = ["..", ".0", "00"]
    @encoding['upper case'] = ["..", "..", ".0"]
    # @contraction['but'] = ["0.", "0.", ".."]
    @encoding
  end

  def contraction_dictionary
    @contraction['but'] = ["0.", "0.", ".."]
  end

  def contractions(message)
    if @contraction.keys.include?(message)
      first_row = "#{@encoding[" "][0]}#{@contraction[message][0]}#{@encoding[" "][0]}"
      second_row = "#{@encoding[" "][1]}#{@contraction[message][1]}#{@encoding[" "][1]}"
      third_row = "#{@encoding[" "][2]}#{@contraction[message][2]}#{@encoding[" "][2]}"
      "#{first_row}\n#{second_row}\n#{third_row}\n"
    else
      self.encode(message)
    end
  end

  def encode(message)
    first_row = message.chars.map do |letter|
      if @upper_case.include?(letter)
        "#{@encoding['upper case'][0]} #{@encoding['a'][0]} "
      else
        "#{@encoding[letter][0]} "
      end
    end
    second_row = message.chars.map do |letter|
      if @upper_case.include?(letter)
        "#{@encoding['upper case'][1]} #{@encoding[letter.downcase][1]} "
      else
        "#{@encoding[letter][1]} "
      end
    end
    third_row = message.chars.map do |letter|
      if @upper_case.include?(letter)
        "#{@encoding['upper case'][2]} #{@encoding[letter.downcase][2]} "
      else
        "#{@encoding[letter][2]} "
      end
    end
    "#{first_row.join}\n#{second_row.join}\n#{third_row.join}\n"
  end
end
