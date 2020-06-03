class Artist

attr_accessor :name, :songs

@@all = []

def initialize(name)
  @name = name
  @songs = []
  save
end

def self.all
  @@all
end

def add_song(name)
  @songs << name
end

def save
  @@all << self
end

def self.find_or_create_by_name(input_name)
  self.all.find {|x| x.name == (input_name) } || self.new(input_name)
end

def print_songs
  @songs.each {|x| puts x.name }
end

end
