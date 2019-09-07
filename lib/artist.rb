class Artist
  attr_accessor :name, :songs
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def self.all
    @@all
  end
 
  
  def add_song(song)
   if !(@songs.include?(song))
      song.artist = self
   end
    
  end
  
  def self.find_or_create_by_name(name)
    artist = @@all.find{|n| n.name == name}
    if artist == nil
      artist = Artist.new(name)
    end
    artist
  end
  
  def print_songs
    @songs.each {|n| puts n.name}
  end
end

