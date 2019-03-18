class MP3Importer
  def initialize(list_of_filenames)
    list_of_filenames.each{ |filename| Song.new_by_file_name(filename.split(" - ")[1]) }
  end
end
