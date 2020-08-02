# night_writer & night_reader
This is the final solo project for Module 1 in Turing. In this project we are expected to create a program which can translate Braille-like text from a text file into English, and back.

To us this project, you'll need to navigate to the 'message.txt' file and input some text. Keep in mind, at this point of the project, it'll only work with lower case letters and spaces. The goal is to be able to accept numbers and upper case letters, as well as common punctuation marks.

Once you've input lower-case, no punctuation, text, navigate to the terminal and enter the 'night_writer' directory. You'll need to enter the following into the command line:
ruby ./lib/night_writer.rb message.txt braille.txt

What's this does it take the text in 'message.txt' file and encode it to Braille, then put it into a new file called 'braille.txt'. After inputting the above on the terminal, you should see a new file created 'braille.txt'. This will be your message in Braille.

To encode that back to English, input the following to the terminal:
ruby ./lib/night_reader.rb braille.txt original_message.txt

This will take the 'braille.txt' file and convert it back to English and put it into a new fille called 'original_message.txt'.
