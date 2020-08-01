class FileReader
  def read(file_name)
    filename = ARGV[2]
    File.read(file_name)
  end
end
