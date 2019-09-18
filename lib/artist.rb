class Artist 
    attr_accessor :name
    
    @@all = [] # a place for all instances of artists to exist

    def initialize(name) # intitialize
      self.name = name 
      @@all << self
    end

    def songs
        Song.all.select{|song| song.artist == self} # searches through all songs in the Song class variable and matches the artist to the songs and returns a new array using select
    end

    def add_song(song)
        song.artist = self
    end

    def self.all
        @@all
    end

    def self.find_or_create_by_name(name)
        result = Artist.all.find{|artist| artist.name == name}
        if !result
            result = Artist.new(name)
        end
        result
    end

    def print_songs
        puts self.songs.map {|song| song.name}
    end
end