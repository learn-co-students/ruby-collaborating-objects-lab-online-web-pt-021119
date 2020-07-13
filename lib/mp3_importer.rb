class MP3Importer
  
  attr_accessor :path
  
  def initialize(filepath)
    @path = filepath
  end
  
  def files
   Dir[@path+"/*.mp3"].collect do |filepath| 
     filepath.split("/")[4]
   end
  end
  
  def import
    self.files.each do |file|
      Song.new_by_filename(file)
    end
  end
  
end