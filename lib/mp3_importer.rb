class MP3Importer

  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |remove| remove.gsub("#{path}/", "") }
  end

  def import
    files.each{|name| Song.new_by_filename(name)}
  end

end
