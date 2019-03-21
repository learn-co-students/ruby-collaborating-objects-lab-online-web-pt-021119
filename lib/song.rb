require 'pry'

class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    artist_name, song_name, rest = filename.split(" - ")
    song = Song.new(song_name)
    @name = song.name
    song.artist = Artist.find_or_create_by_name(artist_name)
    binding.pry
    @artist = song.artist
    @@all << song
  end


  def artist_name=(artist_name)
  end
end
