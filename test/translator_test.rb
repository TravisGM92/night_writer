require "simplecov"
SimpleCov.start
require "minitest/autorun"
require "minitest/pride"
require "./lib/night_writer"
require "./lib/file_reader"
require "./lib/translator"



class TranslatorTest < MiniTest::Test

  def test_it_exists
    translate = Translator.new

    assert_instance_of Translator, translate
  end

  def test_it_has_a_dictionary
    english_to_braille = Translator.new
    english_to_braille.dictionary

    assert_equal ["0.", "..", ".."], english_to_braille.encoding['a']
  end

  def test_it_can_show_correct_letters
    english_to_braille = Translator.new
    english_to_braille.dictionary

    assert_equal ["0.", "..", ".."], english_to_braille.encoding['a']
    assert_equal [".0", "0.", ".."], english_to_braille.encoding['i']
    assert_equal ["0.", "..", "00"], english_to_braille.encoding['u']
  end

  def test_it_can_print_as_braille
    english_to_braille = Translator.new
    english_to_braille.dictionary

    assert_equal "0.", english_to_braille.encoding['a'][0]
    assert_equal "..", english_to_braille.encoding['a'][1]
    assert_equal "..", english_to_braille.encoding['a'][2]
  end

end
