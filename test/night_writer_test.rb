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
end
