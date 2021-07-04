# class Song
#   attr_accessor :title
 
  # def self.new_by_filename(filename)
  #   song = self.new
  #   song.title = filename.split(" - ")[1]
  #   song
  # end
# def self.new_from_filename(filename)
#     info = filename.split(" - ")
#     song = self.new #created a new song object
#     song.name = info[1].chomp(".mp3")
#     song.artist_name = info[0]
#     song
#   end 
# end
class MP3Importer
  attr_accessor :path 
  def initialize(path)
    @path = path 
  end
  # def files
  #     @files = Dir.glob("#{@path}/*.mp3").collect{ |file| file.gsub("#{@path}/", "") }
  #   end
  def files
    files = []
    Dir.new(self.path).each do |file|
      files << file if file.length > 4
    end
    files
  end
  def import
    self.files.each{ |file| Song.new_by_filename(file) }
  end
end