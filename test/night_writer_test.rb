require './test/test_helper.rb'

class NightWrtierTest < MiniTest::Test

  def test_it_exists
    # skip
    night_writer = NightWriter.new

    assert_instance_of NightWriter, night_writer
  end

  def test_it_can_create_a_new_file
    # skip
    ARGV.replace(['input.txt', 'test.txt'])

    @reader = FileReader.new
    night_writer = NightWriter.new
    # night_writer.created
    night_writer.write_braille_to_new_file
    assert_equal 'abc v', @reader.read('input.txt').chomp
  end

  def test_it_can_display_message
    # skip
    ARGV.replace(['test_file_for_script.txt', 'braille.txt'])

    @reader = FileReader.new
    night_writer = NightWriter.new

    assert_equal "Created 'test_file_for_script.txt' containing 4 characters", night_writer.created_file_script
  end

  # def test_it_can_use_contraction_method
  #   skip
  #   ARGV.replace(['contraction_test.txt', 'braille_con.txt'])
  #
  #   @reader = FileReader.new
  #   night_writer = NightWriter.new
  #   night_writer.write_braille_to_new_file
  #
  #   assert_equal 2, @reader.read('braille_con.txt')
  # end
end
