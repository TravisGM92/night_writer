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

  def test_it_can_translate_english_to_braille
    dictionary = Translator.new


    assert_equal ["0.", "..", ".."], dictionary.translate
  end

end
