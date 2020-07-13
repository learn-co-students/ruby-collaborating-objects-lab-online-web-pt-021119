class Artist
    attr_accessor :name, :songs

    @@all = []

    def initialize(name)
        @name = name
        @songs = []
    end

    def self.all
        @@all
    end

    def add_song(song)
        @songs << song
    end

    def save
        @@all << self
    end

    def self.find_or_create_by_name(name)
        # Finds to see if the artist name exists in @@all array
        # A self.find method can be created and then used in this method
        artist_found = self.all.find {|artist| artist.name == name}
        artist_create = self.new(name).tap {|artist| artist.save}
        # new_artist = Artist.new(name)
        # new_artist.save
        # new_artist
        # If the artist is found, return it, else create the artist
        artist_found ? artist_found : artist_create
        # artist_found || artist_create
    end

    def print_songs
        songs.each {|song| puts song.name}
    end
end