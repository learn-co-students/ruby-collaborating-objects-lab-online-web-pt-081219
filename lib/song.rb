require 'pry'

class Song
  attr_accessor :artist, :name, :genre
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_filename(filename)
    #"Michael Jackson - Black or White - pop.mp3"
    #Format & create new Song with artist, name, and genre
    filename.slice!(".mp3")
    file_array = filename.split(" - ")
    artist = file_array[0]
    name = file_array[1]
    genre = file_array[2]
    
    new_song = Song.new(name)
    new_song.artist_name = artist
    new_song.save
    new_song
  end
  
  def artist_name=(artist)
    self.artist = Artist.find_or_create_by_name(artist)
  end
end