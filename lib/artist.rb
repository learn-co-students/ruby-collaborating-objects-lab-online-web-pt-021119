class Artist
  @@all = []
  attr_accessor :name, :songs
   
   
  def initialize(name)
    @name = name
    @songs = []
  end
  def add_song(song)
     self.songs << song
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
   
 def self.find_by_name(name)
  self.all.find {|s| s.name == name}
 end
 def self.create_by_name(name)
   artist = Artist.new(name)
    artist.save
    artist
 end
 
 def self.find_or_create_by_name(name)
   if self.find_by_name(name)
     self.find_by_name(name)
     else self.create_by_name(name)
     end
 end
 def print_songs
   self.songs.each { |song| puts song.name}
 end
end









