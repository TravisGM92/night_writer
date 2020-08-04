require './lib/night_writer_helper'
require './lib/file_reader'
require './lib/translator'

night_writer = NightWriter.new
puts night_writer.created_file_script
night_writer.write_braille_to_new_file
