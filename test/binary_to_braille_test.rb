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
    skip
    encode = BinaryToBraille.new

    message = encode.binary.encode_to_binary('hello')

    assert_equal Array, encode.to_braille(message).class
  end

  def test_it_can_render_braille_cell
    encode = BinaryToBraille.new

    message = encode.binary.encode_to_binary('hello')
    expected = "\n..\n..\n..\n"
    assert_equal expected, encode.render_braille_cell
  end

  def test_it_can_recognize_how_many_words
    encode = BinaryToBraille.new

    message = encode.binary.encode_to_binary('hello')
    assert_equal 1, encode.binary.number_of_words
    message = encode.binary.encode_to_binary('hello there')
    assert_equal 2, encode.binary.number_of_words
  end

  def test_it_can_encode_to_braille
    skip
    encode = BinaryToBraille.new

    message = encode.binary.encode_to_binary('hello')
    encode.to_braille(message)
    expected = 2
    assert_equal expected, encode.render_braille_cell
  end
end
