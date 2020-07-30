require "./lib/file_reader"
class NightWriter
  attr_reader :reader

  def initialize
    @reader = FileReader.new
  end

  def created
    "Created '#{ARGV[1]}' containing #{@reader.read('message.txt').length} characters"
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

# night_writer = NightWriter.new
# p night_writer.created
