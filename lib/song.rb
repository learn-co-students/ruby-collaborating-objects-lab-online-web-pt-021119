require 'pry'

class Song
    attr_accessor :name, :artist

    def initialize(name)
        @name = name
    end

    def self.new_by_filename(filename)
        # binding.pry
        filename=filename[0..(filename.size - 5)]
        artist_name = filename.split(" - ")[0]
        song_name = filename.split(" - ")[1]
        genre = filename.split(" - ")[2]
        # binding.pry
        song = Song.new(song_name)
        artist = Artist.find_or_create_by_name(artist_name)
        song.artist=artist
        artist.add_song(song)
        song
    end

end 