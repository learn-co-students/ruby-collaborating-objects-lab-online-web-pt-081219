class Artist

    attr_accessor :name
    @@all = []

    def initialize(name)
        # use self.name here for single source of truth, uses the setter method rather than accessing the instance variable
        self.name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_song(song)
        song.artist = self
    end

    def songs
        Song.all.select { |song| song.artist == self }
    end

    def self.find_or_create_by_name(name)
        result = Artist.all.find {|artist| artist.name == name}
        if !result
           result = Artist.new(name)
        end
        result
    end

    def print_songs
        puts self.songs.map {|song| song.name}
    end
end