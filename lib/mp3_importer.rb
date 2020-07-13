require 'pry'


class MP3Importer
    attr_accessor :library,:path

    def initialize (path)
        @path=path
        @library=files(path)
    end
    
    def files (path="./spec/fixtures/mp3s")
        files=Dir["#{path}/*.mp3"]
        files.each_with_index.map{|a,i|files[i]=a[21..(a.size)]}
    end

    def import
        @library.each {|file|Song.new_by_filename(file)}
    end

end