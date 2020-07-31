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

    assert_equal Array, encode.to_braille(message).class
  end

  def test_it_can_render_braille_cell
    encode = BinaryToBraille.new

    message = encode.binary.encode_to_binary('hello')
    expected = 2
    assert_equal expected, encode.render_braille_cell
  end

  def test_it_can_encode_to_braille
    skip
    encode = BinaryToBraille.new

    message = encode.binary.encode_to_binary('hello')
    expected = 2
    assert_equal expected, encode.to_braille(message)
  end
end
