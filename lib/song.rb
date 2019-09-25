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


# def artist_name=(name)
#   self.artist_name= Artist.find_or_create_by_name(name)
#   self.artist.add_song(self)
# end 
end




















# class Song 
# attr_accessor :name
  
#   def initialize(name)
#     @name =  name
    
# end 

# def self.new_by_filename (file)
#   song_name = file.split(" - ")[1]
#   artistname = file.split(" - ")[0]
#   song = self.new (song_name)
#   song.artist_namename = artistname
#   song
# end

# def artist_name=(name)
#   self.artist_name= Artist.find_or_create_by_name(name)
#   self.artist.add_song(self)

# end
# end
  