require 'pry'

class Song 
  
  attr_accessor :name, :artist 
  
  def initialize(name)
    @name = name 
  end 
  
  def self.new_by_filename(filename)
    filename_array = filename.split(" - ") 
    title = filename_array[1]
    song = self.new(title)
    artist_instance = self.artist_name(filename_array[0])
    artist_instance.add_song(song)
    song.artist = artist_instance
    song
  end 
  
  def self.artist_name(artist_string)
    Artist.find_or_create_by_name(artist_string)
  end 
  
end 
  
  