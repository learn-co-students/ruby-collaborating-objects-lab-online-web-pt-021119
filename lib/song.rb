class Song
  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song = self.new(filename.split(" - ")[1])
    #Artist.new('Michael Jackson')
  end

  def artist_name=(name)
    @artist = Artist.find_or_create_by_name(name)
  end

end
