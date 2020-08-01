require "./lib/file_reader"
require "./lib/english_to_binary"

class NightWriter
  attr_reader :reader, :output_file, :input_file

  def initialize
    @reader = FileReader.new
    @output_file = ARGV[1]
    @input_file = ARGV[2]
  end

  def created
    print "Created '#{@output_file}' containing #{@reader.read(@output_file).length} characters"
  end

  def encode_file_to_braille
    # I wouldn't worry about testing this method
    # unless you get everything else done
    # plain = reader.read
    # braille = encode_to_braille(plain)
  end

  def read_input_file
    message = @reader.read('message.txt').chomp
    numbers = EnglishToBinary.new('ab')
    numbers.encode_to_binary
  end

  def encode_to_braille
    output = File.new(@output_file, 'w')
    output.write(@reader.read(@input_file))
  end
end

# puts ARGV.inspect
# ARGV.replace

night_writer = NightWriter.new
night_writer.read_input_file
