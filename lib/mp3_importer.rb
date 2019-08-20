class MP3Importer
  attr_accessor :path, :mp3files, :normilized_array
  @@all = []

  def initialize(file_name)
    @path = file_name 
    @@all << self
  end
  
  def files
    result= Dir["#{@path}/*.mp3"]
     result.length
    @normilized_array = []
    result.each do |el|
      @normilized_array << el.split(/\.\/.+\/.+\//)[1]
    end 
    @normilized_array
  end 
   
  def import 
    self.files.each{|el| Song.new_by_filename(el)}
  end
end