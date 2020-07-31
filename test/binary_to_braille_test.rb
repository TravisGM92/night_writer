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

  def test_it_can
    # skip
    message = 'a'
    encode = BinaryToBraille.new(message)
    # dictionary.encode_to_binary(message)
    # cells.binary

    assert_equal 1, encode.show_braille_text
  end
end
