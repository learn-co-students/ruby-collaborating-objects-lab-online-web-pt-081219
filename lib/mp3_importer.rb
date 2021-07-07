require 'pry'

class MP3Importer
  attr_reader :path
 
  def initialize(filename)
    @path = filename
  end
  
  def files
    #Load & format files
    unformatted_files = Dir["#{@path}/*"]
    unformatted_files.map do |file|
      file.slice!("./spec/fixtures/mp3s/")
      file
    end
  end
  
  def import
    self.files.each do |file|
      Song.new_by_filename(file)
    end
  end
  
end