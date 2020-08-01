require "simplecov"
SimpleCov.start
require "minitest/autorun"
require "minitest/pride"
require "./lib/night_reader"
require "./lib/file_reader"


class NightReaderTest < MiniTest::Test

  def test_it_exists
    # skip
    # ARGV.replace('message.txt')
    night_reader = NightReader.new

    assert_instance_of NightReader, night_reader
  end
end
