require "simplecov"
SimpleCov.start
require "minitest/autorun"
require "minitest/pride"
require "./lib/night_writer"
require "./lib/english_to_binary"


class EnglishToBinaryTest < MiniTest::Test

  def test_it_exists
    encoding = EnglishToBinary.new('hello')

    assert_instance_of EnglishToBinary, encoding
  end

  def test_if_dictionary_can_take_letter
    # skip
    encoding = EnglishToBinary.new('h')
    encoding.dictionary

    assert_equal "110010", encoding.encoding['h']
  end

  def test_if_dictionary_can_take_word
    # skip
    encoding = EnglishToBinary.new('hello')
    encoding.dictionary
    expected = ["110010", "100010", "111000", "111000", "101010"]

    assert_equal expected, encoding.encode_to_binary
  end
end
