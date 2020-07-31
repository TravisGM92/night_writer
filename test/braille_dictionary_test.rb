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

    assert_equal 3, dictionary.lower_case
  end
end
