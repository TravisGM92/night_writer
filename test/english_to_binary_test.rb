require "simplecov"
SimpleCov.start
require "minitest/autorun"
require "minitest/pride"
require "./lib/night_writer"
require "./lib/english_to_binary"


class EnglishToBinaryTest < MiniTest::Test

  def test_it_exists
    encoding = EnglishToBinary.new

    assert_instance_of EnglishToBinary, encoding
  end

  def test_if_dictionary_works
    encoding = EnglishToBinary.new
    encoding.dictionary

    assert_equal "010111", encoding.encoding['w']
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
