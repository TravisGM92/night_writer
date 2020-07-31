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
    # skip
    encode = BinaryToBraille.new

    message = encode.binary.encode_to_binary('hello')

    assert_equal String, encode.to_braille(message).class
  end

  def test_it_can_render_braille_cell
    skip
    encode = BinaryToBraille.new

    message = encode.binary.encode_to_binary('a')
    expected = "\n..\n..\n..\n"
    assert_equal expected, encode.render_braille_cell(message)
  end

  def test_it_can_recognize_how_many_words
    encode = BinaryToBraille.new

    message = encode.binary.encode_to_binary('hello')
    assert_equal 1, encode.binary.number_of_words
    message = encode.binary.encode_to_binary('hello there')
    assert_equal 2, encode.binary.number_of_words
  end
end
