class Braille

  attr_reader :lower_case, :upper_case
  def initialize
    @lower_case = ('a'..'z').to_a
    @upper_case = ('A'..'Z').to_a
  end

end
