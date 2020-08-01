require './lib/file_reader'
class NightWriter
  attr_reader :reader, :output_file, :input_file

  def initialize
    @reader = FileReader.new
    @input_file = ARGV[0]
    @output_file = ARGV[1]
  end

  def created
    print "Created '#{@input_file}' containing #{@reader.read(@input_file).length} characters"
  end

  def encode_file_to_braille
    # I wouldn't worry about testing this method
    # unless you get everything else done
    # plain = reader.read
    # braille = encode_to_braille(plain)
  end

  def encode_to_braille
    message = @reader.read('message.txt').chomp
    File.open(@output_file, 'w+') do |file|
      file.write message
      file.close
    end
    # @reader.read(@input_file)
  end

  def new_file_with_braille
  end
end

# puts ARGV.inspect
# ARGV.replace

# night_writer = NightWriter.new
# night_writer.created
# night_writer.encode_to_braille
