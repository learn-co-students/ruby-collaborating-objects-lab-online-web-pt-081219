class Artist
  @@all = []

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    ret = self.all.find { |artist| artist.name == name }
    if !ret
      ret = Artist.new(name)
    end
    ret
  end

  attr_accessor :name
  attr_reader :songs

  def initialize(name)
    self.name = name
    @songs = []
    self.class.all << self
  end

  def add_song(song)
    @songs << song
  end

  def print_songs
    self.songs.each { |song| puts song.name }
  end
end
