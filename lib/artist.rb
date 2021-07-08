require 'pry'

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
  
  def songs
    @songs
  end
  
  def add_song(song)
    @songs << song 
  end
    
  def self.find_or_create_by_name(name)
    found = false
    @@all.each do |artist| 
      if artist.name == name
        found = true
        return artist
        break
      end 
    end
    if !found 
      Artist.new(name)
    end
  end
  
  def print_songs
    self.songs.each do |song|
        puts song.name
    end
  end
  
  
end