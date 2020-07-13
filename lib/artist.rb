class Artist

	attr_accessor :name, :songs
	@@all = []

	def initialize(name)
		@name = name
		@songs = []
		self.save # good constructors populate class vars
	end

	def add_song(song)
		@songs << song
	end

	def save
		@@all << self
	end

	def self.find_or_create_by_name(name)
		@@all.find {|a| a.name == name} || Artist.new(name)
		# literally find OR create
	end

	def print_songs
		@songs.each {|song| puts song.name}
	end

	def self.all
		@@all
	end
	
end

