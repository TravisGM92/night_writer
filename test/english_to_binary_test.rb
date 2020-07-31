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

  def test_if_dictionary_can_take_letter
    encoding = EnglishToBinary.new
    encoding.dictionary

    assert_equal "010111", encoding.encoding['w']
  end

  def test_if_dictionary_can_take_word
    encoding = EnglishToBinary.new
    encoding.dictionary

    expected = ["110010", "100010", "111000", "111000", "101010"]
    assert_equal expected, encoding.encode_to_binary('hello')
  end
end
