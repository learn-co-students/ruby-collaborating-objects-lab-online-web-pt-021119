require 'pry'
class Song
	attr_accessor :name, :artist

	def initialize(name)
 		@name = name
	end
	
	def self.new_by_filename(filename)
 		artist, name, genre = filename.split(' - ') # maybe this can be a regex with named capture groups
		song = Song.new(name)
		song.artist_name = artist
		# I mistakenly used instance vars here at first
		# understand why that was wrong
		song
	end

	def artist_name=(name)
		@artist = Artist.find_or_create_by_name(name)
		@artist.add_song(self)
		# just a "fancy" setter method
	end

end
