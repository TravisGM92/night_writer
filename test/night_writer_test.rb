require "simplecov"
SimpleCov.start
require "minitest/autorun"
require "minitest/pride"
require_relative "../lib/night_writer"

class NightWrtierTest < MiniTest::Test

  def test_it_prints_to_terminal
    skip
    file = File.open("./lib/night_writer.rb")

    expected = "puts \"Created 'braille.txt' containing 256 characters"

    assert_equal expected, File.read(file)
  end
end
