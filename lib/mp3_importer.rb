require "pry"

class MP3Importer

  attr_accessor :path

  def initialize(test_music_path)
    @path = test_music_path
  end

  def files
    Dir.entries("./spec/fixtures/mp3s/").grep (/.mp3\z/)
  end

  def import
    counter = 0
    until counter == self.files.size do
      counter += 1
      Song.new_by_filename
    end
  end
end
