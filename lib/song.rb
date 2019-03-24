require 'pry'

class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end



  def self.new_by_filename(file_name)
    artist, title = file_name.split(" - ")
    song = new(title)
    song.artist = Artist.new(artist)
    song.artist.save
    song.artist.songs << song.name
    song

  end

end
