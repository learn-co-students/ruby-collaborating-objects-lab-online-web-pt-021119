require "pry"

class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    s = new(file_name.split(" - ")[1])
    s.artist = Artist.new(file_name.split(" - ")[0])
    s.artist.save
    s.artist.songs << s.name
    s
  end

end
