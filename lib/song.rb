class Song

    attr_accessor :name, :artist

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
        # artist - title - genre.mp3
        filename_parts = filename.split(" - ")
        song = Song.new(filename_parts[1])
        song.artist_name=(filename_parts[0])
        song
    end

    def artist_name=(artist_name)
        self.artist = Artist.find_or_create_by_name(artist_name)
    end
    

end