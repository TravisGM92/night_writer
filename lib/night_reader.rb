require './lib/night_writer'

class NightReader < NightWriter

  def braille_to_english
    array = []
    message = @reader.read(@input_file).chomp.split("\n").map{ |ele| ele.split(" ")}
    separated_braille = message.transpose
    @braille.encoding.each do |char, braille|
      separated_braille.each do |ele|
        if ele[0] == braille[0] && ele[1] == braille[1] && ele[2] == braille[2]
          array << char
        end
      end
    end
    array.join
  end
end

# night_reader = NightReader.new
# p night_reader.created
