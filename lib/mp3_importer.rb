require "pry"

class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

  def import
    @files = Dir.entries(@path).select {|f| !File.directory? f}
    binding.pry
  end

end

MP3Importer.new("./spec/fixtures/mp3s")
