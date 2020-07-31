require "simplecov"
SimpleCov.start
require "minitest/autorun"
require "minitest/pride"
require "./lib/night_writer"
require "./lib/english_to_binary"
require "./lib/binary_to_braille"
require "./lib/cell"


class BinaryToBrailleTest < MiniTest::Test

  def test_it_exists
    encode = BinaryToBraille.new('a')

    assert_instance_of BinaryToBraille, encode
  end

  def test_it_can_show
    # skip
    message = 'a'
    encoding = EnglishToBinary.new(message)
    encode = BinaryToBraille.new(message)
    # dictionary.encode_to_binary(message)
    assert_equal "0. ", encode.cells.top_row
  end
end
