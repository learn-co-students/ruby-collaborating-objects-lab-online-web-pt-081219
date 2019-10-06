class Artist
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self 
    @songs = []
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    @songs << song 
    song.artist = self
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def self.find_or_create_by_name(name)
    artist = @@all.find {|x| x.name == name}
    if artist == nil 
    artist = Artist.new(name)
    end 
  artist
  end 
  
  def print_songs
    Song.all.select {|song| song.artist == self}.each{|song| puts song.name}
  end
end