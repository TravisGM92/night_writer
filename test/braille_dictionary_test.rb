require "simplecov"
SimpleCov.start
require "minitest/autorun"
require "minitest/pride"
require "./lib/night_writer"
require "./lib/braille_dictionary"


class BrailleDictionaryTest < MiniTest::Test

  def test_it_exists
    dictionary = Braille.new

    assert_instance_of Braille, dictionary
  end

  def test_it_can_print_alphabet
    dictionary = Braille.new

    expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    assert_equal expected, dictionary.lower_case
    expected = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    assert_equal expected, dictionary.upper_case

  end
end
