require './lib/night_writer'

class NightReader < NightWriter

  def braille_to_english
    message = @reader.read(@input_file).chomp
    # message[10]
    @braille.encoding.select do |keys, values|
      values[0] == message[0..2] && values[1] == message[4..6] && values[2] == message[8..10]
    end.keys.join
  end
end

# night_reader = NightReader.new
# p night_reader.created
