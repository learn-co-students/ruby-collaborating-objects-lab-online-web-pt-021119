require 'pry'

class MP3Importer
	attr_accessor :path, :files

	def initialize(path)
		@path = path
		@files = Dir.children(@path).map {|f| f.split('/')[-1]}.select {|f| f.end_with?('.mp3')}
		# .select wasn't necessary, but directions said only .mp3s
	end

		# regex to get basename .match(/([^\/]+$/) 
		# or .split('/')[-1]
		# went with split to avoid caputure groups

	def import
		@files.each do |file|
			song = Song.new_by_filename(file)
		end
	end

end
