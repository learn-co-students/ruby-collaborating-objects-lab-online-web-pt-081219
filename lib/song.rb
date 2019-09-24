require 'pry-byebug'

class Song
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize(name)
    @name = name
    @@songs << self
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    artist.songs << self
    @artist = artist
  end

  def artist_name=(artist_name)
    @artist = Artist.find_or_create_by_name(artist_name)
    @artist.songs << self
  end

  def self.new_by_filename(file)
    imported_song = file.split(" - ")
    imported_artist = imported_song[0]
    imported_songname = imported_song[1]
  
    song_find = @@songs.find { |s| s.name == imported_songname}
    if song_find
      song_find.artist_name = imported_artist
      song_find
    else
      new_song = Song.new(imported_songname)
      new_song.artist_name = imported_artist
      new_song
    end
  end
end
