require 'pry'
#binding.pry

class Artist
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    save
  end
  
  def self.find_or_create_by_name(name)
    #if the artist exist return. If new artist create.
    
    if !(self.all.find {|artist| artist.name == name})
      Artist.new(name)
    else
      self.all.find {|artist| artist.name == name}
    end
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def add_song(song)
    #set the song artist to self
    song.artist = self
  end
  
  def print_songs
    songs = Song.all.select {|song| song.artist == self}
    songs.each {|song| puts song.name}
  end
end