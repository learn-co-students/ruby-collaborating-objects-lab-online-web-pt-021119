class MP3Importer

    attr_accessor :path

    def initialize(path)
        @path = path
    end

    def files
        # files = []
        # Dir.new(self.path).each do |file|
        #   files << file if file.length > 4
        # end
        # files

        # @files ||= Dir.entries(@path).select {|song| !File.directory?(song) && song.end_with?(".mp3")}
        # Obtain the files with extension *.mp3 from 'path'
        @files ||= Dir.glob("#{path}/*.mp3").collect {|song_name| song_name.gsub("#{path}/", "")}
    end

    def import
        self.files.each {|filename| Song.new_by_filename(filename)}
    end

end