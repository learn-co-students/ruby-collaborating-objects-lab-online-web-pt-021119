
class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize (name)
    @name = name
  end

  def self.new_by_filename(filename)
    file = filename.split(" - ")
    @song = self.new(file[1])
    @Artist = self.new(file[0])
    @song.artist = @Artist
    @@all << @song
    @song
  end

end
