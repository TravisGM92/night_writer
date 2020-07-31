class EnglishToBinary

  attr_reader :lower_case, :upper_case, :encoding
  def initialize
    @lower_case = ('a'..'z').to_a
    @upper_case = ('A'..'Z').to_a
    @encoding = {}
  end

  def dictionary
    @lower_case.each do |letter|
      @encoding[letter] = 0
    end
    @encoding['a'] = "100000"
    @encoding['b'] = "110000"
    @encoding['c'] = "100100"
    @encoding['d'] = "100110"
    @encoding['e'] = "100010"
    @encoding['f'] = "110100"
    @encoding['g'] = "110110"
    @encoding['h'] = "110010"
    @encoding['i'] = "010100"
    @encoding['j'] = "010110"
    @encoding['k'] = "101000"
    @encoding['l'] = "111000"
    @encoding['m'] = "101100"
    @encoding['n'] = "101110"
    @encoding['o'] = "101010"
    @encoding['p'] = "111100"
    @encoding['q'] = "111110"
    @encoding['r'] = "111010"
    @encoding['s'] = "011100"
    @encoding['t'] = "011110"
    @encoding['u'] = "101001"
    @encoding['v'] = "111001"
    @encoding['w'] = "010111"
    @encoding['x'] = "101101"
    @encoding['y'] = "101111"
    @encoding['z'] = "101011"
    @encoding
  end

end