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
    self 
  end 
  def self.find_or_create_by_name(name)
    if self.all.detect{ |artist| artist.name == name}
      @@all.detect{ |artist| artist.name == name}  
      #self.all.detect{ |artist| artist.name == name}
       else 
    artist= self.new(name)
    artist.save
    artist 
    end 
  end 
   # def self.find_by_name(name)
 # self.all.find {|s| s.name == name}
 # end 
 
 #def self.create_by_name(name)
  # artist = Artist.new(name)
  #  artist.save
  #  artist
# end

# def self.find_or_create_by_name(name)
 #  if self.find_by_name(name)
 #    self.find_by_name(name)
 #    else self.create_by_name(name)
 #    end
# end
    
  def print_songs
    @songs.collect do |song|
      puts song.name
    end 
  end 
end 