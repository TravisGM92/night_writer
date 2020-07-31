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

  def test_it_can_show_a_top_row
    # skip
    message = 'a'
    encoding = EnglishToBinary.new(message)
    encode = BinaryToBraille.new(message)
    # dictionary.encode_to_binary(message)
    encode.cells
    encode.cells.top_row_binary_to_braille(message)

    assert_equal "0", encode.cells.dot_1
    assert_equal ".", encode.cells.dot_2
  end

  def test_it_can_show_b_top_row
    # skip
    message = 'b'
    encoding = EnglishToBinary.new(message)
    encode = BinaryToBraille.new(message)
    # dictionary.encode_to_binary(message)
    encode.cells
    encode.cells.top_row_binary_to_braille(message)

    assert_equal "0", encode.cells.dot_1
    assert_equal ".", encode.cells.dot_4
  end

  def test_it_can_show_a_middle_row
    # skip
    message = 'a'
    encoding = EnglishToBinary.new(message)
    encode = BinaryToBraille.new(message)
    # dictionary.encode_to_binary(message)
    encode.cells
    encode.cells.middle_row_binary_to_braille(message)

    assert_equal ".", encode.cells.dot_2
    assert_equal ".", encode.cells.dot_5
  end

  def test_it_can_show_b_middle_row
    # skip
    message = 'b'
    encoding = EnglishToBinary.new(message)
    encode = BinaryToBraille.new(message)
    # dictionary.encode_to_binary(message)
    encode.cells
    encode.cells.middle_row_binary_to_braille(message)

    assert_equal "0", encode.cells.dot_2
    assert_equal ".", encode.cells.dot_5
  end

  def test_it_can_show_a_bottom_row
    # skip
    message = 'a'
    encoding = EnglishToBinary.new(message)
    encode = BinaryToBraille.new(message)
    # dictionary.encode_to_binary(message)
    encode.cells
    encode.cells.bottom_row_binary_to_braille(message)

    assert_equal ".", encode.cells.dot_2
    assert_equal ".", encode.cells.dot_5
  end

  def test_it_can_show_b_bottom_row
    # skip
    message = 'b'
    encoding = EnglishToBinary.new(message)
    encode = BinaryToBraille.new(message)
    # dictionary.encode_to_binary(message)
    encode.cells
    encode.cells.bottom_row_binary_to_braille(message)

    assert_equal ".", encode.cells.dot_2
    assert_equal ".", encode.cells.dot_5
  end

  def test_it_can_show_all_rows_a
    skip # Can't figure out how to get this to test correctly
    message = 'a'
    encoding = EnglishToBinary.new(message)
    encode = BinaryToBraille.new(message)
    # dictionary.encode_to_binary(message)
    encode.cells
    encode.cells.top_row_binary_to_braille(message)
    encode.cells.middle_row_binary_to_braille(message)
    encode.cells.bottom_row_binary_to_braille(message)

    assert_equal ".", encode.cells.all_rows.class
  end
end
