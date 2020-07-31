require "simplecov"
SimpleCov.start
require "minitest/autorun"
require "minitest/pride"
require "./lib/night_writer"

class NightWrtierTest < MiniTest::Test

  def test_it_exists
    ARGV.replace ['message.txt', './lib/braille.txt']
    night_writer = NightWriter.new

    assert_instance_of NightWriter, night_writer
  end

  def test_it_can_print_to_terminal
    ARGV.replace ['message.txt', 'braille.txt']
    night_writer = NightWriter.new

    assert_equal "Created 'braille.txt' containing 256 characters", night_writer.created
  end

  def test_it_can_take_message_file_and_save_to_braille_file
    ARGV.replace ['message.txt', 'braille.txt']
    night_writer = NightWriter.new

    assert_equal 2, night_writer.encode_to_braille('message.txt')
  end
end
