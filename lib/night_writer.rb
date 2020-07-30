require "./lib/file_reader"
class NightWriter
  attr_reader :file_reader

  def initialize
    @reader = FileReader.new
    puts "Created '#{ARGV[1]}' containing 256 characters"
  end

  def encode_file_to_braille
    # I wouldn't worry about testing this method
    # unless you get everything else done
    plain = reader.read
    braille = encode_to_braille(plain)
  end

  def encode_to_braille(input)
    # you've taken in an INPUT string
    # do the magic
    # send out an OUTPUT string
  end
end

# puts ARGV.inspect
# ARGV.replace

night_writer = NightWriter.new
