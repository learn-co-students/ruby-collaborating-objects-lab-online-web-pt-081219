require 'pry'

class Song 
  @@all = []
  attr_accessor :name, :genre
  attr_reader :artist
  
  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def artist= (name)
    @artist = name
    if self.artist.is_a?(Artist)
      self.artist.add_song(self)
    else 
      @artist = Artist.new(name)
      self.artist.add_song(self)
    end
  end
  
    def artist_name= (name)
      if (Artist.all.select{|artist| artist.name == name}) != []
        found_artist = Artist.all.select{|artist| artist.name == name}
        @artist = found_artist[0]
        self.artist.add_song(self)
      else 
        @artist = Artist.new(name)
        self.artist.add_song(self)
    end
  end
  
  def self.new_by_filename(filename)
      newsong = filename.split(" - ")
      targetsong = Song.new(newsong[1])
      targetsong.artist = newsong[0]
      targetsong
  end 
  
  def self.all
    @@all 
  end
  
end