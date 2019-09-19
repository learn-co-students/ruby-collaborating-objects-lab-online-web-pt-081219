# frozen_string_literal: true

class Song
  @@all = []

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    data = filename.gsub(/\.mp3/, '').split(/\s-\s/)
    song = Song.new(data[1])
    song.artist_name = data[0]
    song
  end

  attr_accessor :name
  attr_reader :artist

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end

  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end
end
