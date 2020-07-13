require 'pry'

class MP3Importer
  attr_accessor :path
  @@songs = []

  def initialize(path)
    @path = path
  end

  def files
    @@songs = Dir.glob(path + "/**.mp3")
    @@songs = @@songs.collect do |song|
      *garbage, content = song.split("/")
      song = content
    end
  end

  def songs
    @@songs
  end

  def import
    @@songs.each do |song|
      artist, name, rest = song.split(" - ")
        Song.new_by_filename(song)
    end
  end
end
