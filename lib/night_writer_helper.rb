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

  def created_file_script
    "Created '#{@input_file}' containing #{@reader.read(@input_file).length} characters"
  end

  def encode_to_braille_wrap
    message = @reader.read(@input_file).chomp
    wrap = message.scan(/.{1,80}/)
    wrap.map do |input|
      @braille.encode(input)
    end.join("\n")
  end

  def write_braille_to_new_file
    encoded_message = self.encode_to_braille_wrap
    File.open(@output_file, 'w+') do |file|
      file.write encoded_message
      file.close
    end
    @reader.read(@input_file)
  end

end
