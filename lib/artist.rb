require 'pry-byebug'

class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def self.all
    @@all
  end

  def self.songs
    @songs
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

  def add_song(name)
    @songs << name
  end

  def self.find_or_create_by_name(name)
    artist = @@all.find { |a| a.name == name }
    if artist
      artist
    else
      Artist.new(name)
    end
  end
end
