require "pry"

class Artist

  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name=name
    @songs=[]
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def save
    self.class.all << self
    self
  end

  def self.find_or_create_by_name(name)
    new(name) unless all.map {|artist| artist.name}.include? (name)
  end

  def print_songs
    songs.each {|song| puts song.name}
  end

end
