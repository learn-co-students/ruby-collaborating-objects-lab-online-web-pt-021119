class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def songs
    @songs
  end

  def add_song(song)
    new_song = Song.new(song)
    new_song.artist = self
    self.songs << song
  end

  def save
    self.class.all << self
  end

end
