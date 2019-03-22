class Artist 
  
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name 
    @all_songs = []
    @@all << self 
  end
  
  def songs 
    @all_songs
  end 
  
  def add_song(song) 
    @all_songs << song 
  end 
  
  def self.all 
    @@all 
  end 
  
  def save 
    @@all << self 
  end 
  
  def self.find_or_create_by_name(name_string)
    all_names = []
    self.all.each do |artist|
      all_names << artist.name
    end 
    
    if all_names.include?(name_string)
      self.all.find do |artist|
        artist.name == name_string
      end
    else
      self.new(name_string)
    end 
  end
  
  def print_songs 
    @all_songs.each do |song|
      puts song.name 
    end 
  end 
  
  
  
end 