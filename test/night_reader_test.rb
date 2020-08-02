require "simplecov"
SimpleCov.start
require "minitest/autorun"
require "minitest/pride"
require "./lib/night_reader"
require "./lib/file_reader"


class NightReaderTest < MiniTest::Test

  def test_it_exists
    # skip
    night_reader = NightReader.new

    assert_instance_of NightReader, night_reader
  end

  def test_it_can_inherit_from_night_writer
    # skip
    ARGV.replace(['input.txt', 'test.txt'])

    @reader = FileReader.new
    night_reader = NightReader.new
    expected = "Created 'input.txt' containing 2 characters"
    assert_equal expected, night_reader.created
  end

  def test_it_can_read_test_file_of_braille
    # skip
    ARGV.replace(['input.txt', 'test.txt'])

    @reader = FileReader.new
    night_reader = NightReader.new
    expected = "0. 0. ..\n" + ".. 0. 00\n" + ".. .. ..\n"
    assert_equal expected, @reader.read('test.txt')
  end

  def test_it_can_take_braille_letter_and_change_back_to_english
    # skip
    ARGV.replace(['test.txt', 'input.txt'])

    @reader = FileReader.new
    night_reader = NightReader.new

    assert_equal "abc", night_reader.braille_to_english
  end
end
