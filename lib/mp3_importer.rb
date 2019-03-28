require 'pry'

class MP3Importer
  
  attr_accessor :path
  
  def initialize(filename)
    @path = filename
  end
  
  def files
    @files = Dir.entries(@path)
    @files.delete_if { |s| s == "." || s == ".." }
  end
  
  def import
    self.files.each{|file| Song.new_by_filename(file)}
  end
  
end