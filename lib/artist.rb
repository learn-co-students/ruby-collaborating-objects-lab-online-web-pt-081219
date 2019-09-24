class Artist 
  attr_accessor :name 
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
    song.artist = self
    @songs << song
  end
  
  def songs
    Song.all.find_all {|song| song.artist == self}
  end
  
  def self.find_or_create_by_name(name)
    if @@all.any? {|artist| artist.name == name}
      return @@all.find {|artist| artist.name == name}
    else
      new_artist = Artist.new(name)
      return new_artist
    end
  end
  
  def print_songs
    song_array = Song.all.find_all {|song| song.artist == self}
    song_array.each do |song|
      puts song.name
    end
  end
  
end 
    