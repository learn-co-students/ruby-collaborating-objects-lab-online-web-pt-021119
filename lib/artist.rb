class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
  end

  def songs
    @@all
  end

  def self.all
    @@all
  end

  def add_song(song)
    @song = song
    @@all << @song
  end

  def save
    @@all << self
  end


  def self.find_or_create_by_name(name)
    if (self.nil?)
        self.name = Artist.new(name)
      else
        @name = self.name
    end
  end

  def print_songs
    self.all
  end

end
