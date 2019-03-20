class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def new_by_filename(filename)
    song_name = filname.split(" - ")[1]
    artist_name = filname.split(" - ")[0]
    new_song = Song.new(song_name)
    new_song.artist = artist_name
    new_song
  end

end
