require "pry"
class Artist 
  attr_accessor :name, :songs
  @@all=[]
  
  def initialize(name)
    @name=name 
    @songs=[]
  end 

  def add_song(song)
    @songs << song 
  end 
  def self.all 
    @@all 
  end 
  def self.create(name)
    self.new(name).tap {|artist| artist.save}
  end
  def save 
    Artist.all << self
    #@@all
  end 
  def self.find_or_create_by_name(name)
    if self.all.detect{ |artist| artist.name == name}
     return name
    else 
     self.new(name)
    end 
    
  end 
 # binding.pry 
  def print_songs
    @songs.collect do |song|
      puts song.name
    end 
  end 
end 