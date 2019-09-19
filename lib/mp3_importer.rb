class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    
    files = Dir[@path+"/*.mp3"]
    files.map{|file| file.slice!"./spec/fixtures/mp3s/"}
    files
  end
  
  def import
    self.files.each{ |filename| Song.new_by_filename(filename) }
  end
  
  
end