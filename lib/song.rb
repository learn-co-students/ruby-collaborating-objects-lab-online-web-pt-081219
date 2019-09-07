class Song
  attr_accessor :name
 @@all = []
  def initialize(name)
    @name = name
    @artist = nil
    @@all << self
  end
  
  def artist=(artist)
    @artist = artist
    artist.songs << self
  end
  
  def artist
    @artist
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_filename(filename)
    file = filename.split(" - ")
    artist = Artist.find_or_create_by_name(file[0])
    song = self.new(file[1])
    artist.add_song(song)
    song
  end
  
  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
  
end