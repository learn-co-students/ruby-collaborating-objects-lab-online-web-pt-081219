class MP3Importer
  attr_accessor :path
  
  def initialize(filepath)
    @path = filepath 
  end 
  
  def files
    filepaths = Dir["./spec/fixtures/**/*.mp3"]
    filenames = []
    
    filepaths.each do |file|
      file.slice!("./spec/fixtures/mp3s/")
      filenames << file 
    end 
    
    filenames
  end 
  
  def import 
    files.each{|file|Song.new_by_filename(file)}
  end 


end 