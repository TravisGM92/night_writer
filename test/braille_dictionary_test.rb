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

  def test_it_can
    dictionary = Braille.new

    assert_equal "1100001", dictionary.english_to_braille('a')
  end
end

# 1 => 100000
# 1,2 => 110000
# 1,4 => 100100
# 1,4,5 => 100110
# 1,5 => 100010
# 1,2,4 => 110100
# 1,2,4,5 => 110110
# 1,2,5 => 110010
# 2,4 => 010100
# 2,4,5 => 010110
