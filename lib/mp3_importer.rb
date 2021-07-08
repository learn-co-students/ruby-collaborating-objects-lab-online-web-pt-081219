class MP3Importer 
  
  attr_accessor :paath, :files
  @@all = []
  
  def initialize(path)
   @path = path
   @files = []
    Dir.foreach(self.path) do |file| 
      if file.match(/.mp3/)
        @files << file 
      end
    end 
  end
  
  def path 
    @path
  end
  
  def import
    @files.each do |file|
    Song.new_by_filename(file)
    end
  end
end