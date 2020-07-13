require 'pry'
class MP3Importer

attr_accessor :path

def initialize (path)
  @path = path
end

def files
  Dir.chdir(@path) do | path |
    #chdir uses the path instance to change directory, the path var placeholder
        Dir.glob("*.mp3")
        #glob returns the desired matches in this case mp3 file extentions without the path
      end
    end

def import
  files.each{|x| Song.new_by_filename(x)}
end


end
