require './lib/file_reader'
require './lib/translator'

class NightWriter
  attr_reader :reader, :output_file, :input_file

  def initialize
    @braille = Translator.new
    @braille.dictionary
    @reader = FileReader.new
    @input_file = ARGV[0]
    @output_file = ARGV[1]
  end

  def created
    "Created '#{@input_file}' containing #{@reader.read(@input_file).length} characters"
  end

  def encode_file_to_braille
    # I wouldn't worry about testing this method
    # unless you get everything else done
    # plain = reader.read
    # braille = encode_to_braille(plain)
  end

  def change_to_braille
  end

  def encode_to_braille
    message = @reader.read('message.txt').chomp
    encoded_message = @braille.encode(message)
    File.open(@output_file, 'w+') do |file|
      file.write encoded_message
      file.close
    end
    @reader.read(@input_file)
  end

  def new_file_with_braille
  end
end

# puts ARGV.inspect
# ARGV.replace

night_writer = NightWriter.new
# night_writer.created
night_writer.encode_to_braille
