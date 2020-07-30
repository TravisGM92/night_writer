require "simplecov"
SimpleCov.start
require "minitest/autorun"
require "minitest/pride"
require "./lib/night_writer"

class NightWrtierTest < MiniTest::Test

  def test_it_exists
    night_writer = NightWriter.new

    assert_instance_of NightWriter, night_writer
  end

  def test_it_can_print_to_terminal

    assert_equal 3, ARGV.replace(NightWriter.new)
  end
end
