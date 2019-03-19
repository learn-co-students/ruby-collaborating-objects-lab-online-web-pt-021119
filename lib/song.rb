class Song
  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song = self.new(filename.split(" - ")[1])
    song.artist = Artist.new(filename.split(" - ")[0])
    song.artist.add_song(song)
    song
  end

  def artist_name=(name)
    @artist = Artist.find_or_create_by_name(name)
  end

end
