class Song

attr_accessor :name, :artist

def initialize(name)
 @name = name
end

def self.new_by_filename(filename)
 name = filename.split(" - ") 

 new_song = self.new(name[1])
 new_song.artist_name = name[0]
 new_song
 
end

def artist_name=(name)
 self.artist = Artist.find_or_create_by_name(name)
 artist.add_song(self)
end

end