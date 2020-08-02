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
    ARGV.replace(['test_file_for_script.txt', 'test.txt'])

    @reader = FileReader.new
    night_reader = NightReader.new
    expected = "Created 'test.txt' containing 12 characters"
    assert_equal expected, night_reader.created_message_file_script
  end

  def test_it_can_read_test_file_of_braille
    # skip
    ARGV.replace(['input.txt', 'test.txt'])

    @reader = FileReader.new
    night_reader = NightReader.new
    expected = "0. \n" + "..\n" + "..\n"
    assert_equal expected, @reader.read('test_file_for_braille.txt')
  end

  def test_it_can_take_braille_letters_and_change_back_to_english
    # skip
    ARGV.replace(['test_file_for_braille.txt', 'input.txt'])

    @reader = FileReader.new
    night_reader = NightReader.new

    assert_equal "a", night_reader.braille_to_english
  end

  def test_it_can_translate_words_of_braille_into_english
    # skip
    ARGV.replace(['test_file_to_translate_braille_words.txt', 'input.txt'])

    @reader = FileReader.new
    night_reader = NightReader.new

    assert_equal "abc v", night_reader.braille_to_english
  end
end
