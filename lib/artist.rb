require 'pry'

class Artist
  attr_accessor :name, :songs
  @@songs = []
  @@all = []

  def initialize(name)
    @name = name
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
    @@all.each do |artist|
      if artist.name.include?(artist_name)
        artist
      else
        new_artist = Artist.new(artist_name)
        @@all << new_artist
        new_artist
        binding.pry
      end
    end

  end

end
