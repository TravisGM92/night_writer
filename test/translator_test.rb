require './test/test_helper.rb'

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

  def test_it_exists2
    ARGV.replace(['input.txt', 'test.txt'])
    night_writer = NightWriter.new

    assert_instance_of NightWriter, night_writer
  end

  def test_it_can_create_a_new_file
    # skip
    ARGV.replace(['input.txt', 'test.txt'])
    english_to_braille = Translator.new
    english_to_braille.dictionary
    @reader = FileReader.new
    night_writer = NightWriter.new
    night_writer.write_braille_to_new_file
    expected = "0. 0. 00 .. 0. \n" + ".. 0. .. .. 0. \n" + ".. .. .. .. 00 \n"
    assert_equal expected, @reader.read('test.txt')
  end

  def test_it_can_display_message
    ARGV.replace(['input.txt', 'test.txt'])

    @reader = FileReader.new
    night_writer = NightWriter.new

    assert_equal "Created 'input.txt' containing 5 characters", night_writer.created_file_script
  end

  def test_it_can_translate_special_characters
    # skip
    english_to_braille = Translator.new
    english_to_braille.dictionary

    @reader = FileReader.new

    assert_equal ["..", "00", "0."], english_to_braille.encoding['!']
    assert_equal ["..", "00", ".0"], english_to_braille.encoding['.']
    assert_equal ["..", "0.", ".."], english_to_braille.encoding[',']
    assert_equal ["..", "..", "0."], english_to_braille.encoding["'"]
    assert_equal ["..", "..", "00"], english_to_braille.encoding["-"]
    assert_equal ["..", "00", ".."], english_to_braille.encoding[":"]
    assert_equal ["..", "0.", "0."], english_to_braille.encoding[";"]
    assert_equal ["..", "0.", "00"], english_to_braille.encoding["?"]
    assert_equal ["..", ".0", "0."], english_to_braille.encoding["*"]
    assert_equal ["..", ".0", "00"], english_to_braille.encoding['"']
  end

end
