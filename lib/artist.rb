require 'pry'

class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist_name)
    # detect
    # binding.pry
    if @@all.detect {|artist| artist.name == artist_name }.nil?
      result = Artist.new(artist_name)
      @@all << result
    else
      result = @@all.detect {|artist| artist.name == artist_name }
    end
    result
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

end
