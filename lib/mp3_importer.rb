class MP3Importer
  
  attr_accessor :path, :files 
  
  def initialize(path)
    @path=path 
  end 
  def files
    @files = Dir.entries(@path).select {|f| !File.directory?(f)}
  end

  def import
    self.files.each do |file_name|
      song = Song.new_by_filename(file_name)
    end
  end
  
end 