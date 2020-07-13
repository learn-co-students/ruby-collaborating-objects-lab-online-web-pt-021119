require 'pry'

class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    # binding.pry
    artist, song, rest = filename.split(" - ")
    # binding.pry
    new_instance = self.new(song)
    new_instance.artist_name=(artist)
    new_instance
    # binding.pry
  end

  def artist_name=(artist_name)
    self.artist = Artist.find_or_create_by_name(artist_name)
    # binding.pry
    self.artist.add_song(self)
  end
end
