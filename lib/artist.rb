class Artist


  attr_accessor :name
  attr_reader :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
      @songs << song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    new(name) unless all.map {|artist| artist.name}.include? (name)
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end
end
