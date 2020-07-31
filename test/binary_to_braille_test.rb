require "simplecov"
SimpleCov.start
require "minitest/autorun"
require "minitest/pride"
require "./lib/night_writer"
require "./lib/english_to_binary"
require "./lib/binary_to_braille"



class BinaryToBrailleTest < MiniTest::Test

  def test_it_exists
    encode = BinaryToBraille.new

    assert_instance_of BinaryToBraille, encode
  end

  def test_it_can_recieve_binary_message
    encode = BinaryToBraille.new

    message = encode.binary.encode_to_binary('hello')
    expected = ["110010", "100010", "111000", "111000", "101010"]
    assert_equal expected, encode.to_braille(message)
  end

  def test_it_can_encode_to_braille
    encode = BinaryToBraille.new

    message = encode.binary.encode_to_binary('hello')
    expected = 2
    assert_equal expected, encode.to_braille(message)
  end
end
