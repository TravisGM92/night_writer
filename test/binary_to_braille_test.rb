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
end
