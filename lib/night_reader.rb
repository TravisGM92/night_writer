require './lib/night_writer_helper'
require './lib/file_reader'
require './lib/translator'

night_reader = NightReader.new
night_reader.encode_to_english_file
puts night_reader.created_message_file_script
