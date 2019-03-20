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

  def self.find_or_create_by_name(name)
    if self.all.include?(name)
      name
    else
      artist = self.new(name)
    end
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

  def print_songs
    self.songs.each {|s| puts "#{s.name}"}
  end

end
