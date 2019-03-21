require 'pry'

class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @@songs = []
  end

  def add_song(song)
    @@songs << song
  end

  def songs
    @@songs
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist_name)
    new_artist = nil
    @@all.each do |artist|
      if artist.name.include?(artist_name)
        new_artist = artist
      else
        new_artist = Artist.new(artist_name)
        @@all << new_artist
      end
    end
    new_artist
  end

  def print_songs
    @@songs.each do |song|
      puts song.name
    end
  end

end
