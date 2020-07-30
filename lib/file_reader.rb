class FileReader
  def read(file_name)
    filename = ARGV[0]
    File.read(filename)
  end
end
