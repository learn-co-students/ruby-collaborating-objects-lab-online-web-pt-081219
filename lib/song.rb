class Song 
  attr_accessor :name, :artist 
  
  @@all = []
  
  def initialize(name, artist=nil)
    @name = name
    @artist = artist
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_filename(filename)
    file_array = filename.split(" - ")
    new_song = Song.new(file_array[1])
    new_song.artist_name=(file_array[0])
    new_song
  end
  
  def artist_name=(artist_string)
    artist_object = Artist.find_or_create_by_name(artist_string)
    artist_object.add_song(self)
  end
  
end
    
    