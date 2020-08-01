require "simplecov"
SimpleCov.start
require "minitest/autorun"
require "minitest/pride"
require "./lib/night_writer"
require "./lib/file_reader"


class NightWrtierTest < MiniTest::Test

  def test_it_exists
    # ARGV.replace('message.txt')
    night_writer = NightWriter.new

    assert_instance_of NightWriter, night_writer
  end

  def test_it_can_create_a_new_file
    ARGV.replace(['message.txt', 'braille.txt'])

    @reader = FileReader.new
    night_writer = NightWriter.new
    # night_writer.created
    night_writer.encode_to_braille
    assert_equal 'travis', @reader.read('braille.txt')
  end

  def test_it_can_display_message
    ARGV.replace(['message.txt', 'braille.txt'])

    @reader = FileReader.new
    night_writer = NightWriter.new

    assert_equal "Created 'message.txt' containing 7 characters", night_writer.created
  end
end
