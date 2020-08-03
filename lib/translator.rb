class Translator

  attr_reader :encoding, :upper_case, :upper_case_letters
  def initialize
    @encoding = {}
    @upper_case = ('A'..'Z').to_a
    @upper_case_letters = {}
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
    @encoding
  end

  def upper_case_dicitonary
    @upper_case_letters['A'] = ["..", "..", ".0"]
    @upper_case_letters['B'] = ["..", "..", ".0"]
    @upper_case_letters['C'] = ["..", "..", ".0"]
    @upper_case_letters['D'] = ["..", "..", ".0"]
    @upper_case_letters['E'] = ["..", "..", ".0"]
    @upper_case_letters['F'] = ["..", "..", ".0"]
    @upper_case_letters['G'] = ["..", "..", ".0"]
    @upper_case_letters['H'] = ["..", "..", ".0"]
    @upper_case_letters['I'] = ["..", "..", ".0"]
    @upper_case_letters['J'] = ["..", "..", ".0"]
    @upper_case_letters['K'] = ["..", "..", ".0"]
    @upper_case_letters['L'] = ["..", "..", ".0"]
    @upper_case_letters['M'] = ["..", "..", ".0"]
    @upper_case_letters['N'] = ["..", "..", ".0"]
    @upper_case_letters['O'] = ["..", "..", ".0"]
    @upper_case_letters['P'] = ["..", "..", ".0"]
    @upper_case_letters['Q'] = ["..", "..", ".0"]
    @upper_case_letters['R'] = ["..", "..", ".0"]
    @upper_case_letters['S'] = ["..", "..", ".0"]
    @upper_case_letters['T'] = ["..", "..", ".0"]
    @upper_case_letters['U'] = ["..", "..", ".0"]
    @upper_case_letters['V'] = ["..", "..", ".0"]
    @upper_case_letters['W'] = ["..", "..", ".0"]
    @upper_case_letters['X'] = ["..", "..", ".0"]
    @upper_case_letters['Y'] = ["..", "..", ".0"]
    @upper_case_letters['Z'] = ["..", "..", ".0"]
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
