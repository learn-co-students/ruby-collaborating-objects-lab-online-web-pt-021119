class Song
    attr_accessor :name, :artist

    def initialize(name)
        @name = name
    end

    def artist_name=(name)
        self.artist = Artist.find_or_create_by_name(name)
        artist.add_song(self)
    end

    def self.new_by_filename(file)
        # .chomp removes the file extension name
        # .split removes the dash, we are left with [artist, title]
        song_name = file.chomp(".mp3").split(" - ")
        song = self.new(song_name[1])   # New instance of Song
        song.artist_name = song_name[0] # New instance with Artist name
        song    # Returns song instance with song name, hence [1]
    end
end