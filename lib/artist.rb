class Artist 
attr_accessor :name
@@all = [] 

  def initialize(name)
    @name = name
    @songs = []
     save
     # @@all = [] dont put here otherwise youll reset everytime.
end

def save
  @@all << self # this self is referring to instance of Artist not class because it's in a instance method. or instance scope
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
end













# class Artist 
# attr_accessor :name
# @@all = []
#   def initialize(name)
#     @name = name
#     @songs = [] #each instance of our artist class will have a collection of its own songs. not the artist class to know all the songs. we want the srtist to keep track of their own songs.
#     save
#   end 
  
#   # need this method to grab those artists so we can return all existing Artist instances in method add_song
#   def save
#     @@all << self
#   end
  
#   def songs
#     @songs
#   end
#   def add_song(song)
#     @songs << song
#   end
  
# def self.all 
#   @@all 
# end
 
# def self.find_or_create_by_name(name)
#   self.all.find {|artist| artist.name == name} || self.new(name).save
# end
   
#   def self.find_or_create_by_name(name)
#   if @@all.find do |artist|
#       artist.name == name
#     end
#     else
#       new_artist  = Artist.new(name)
#       new_artist.save
    
#     end
#   end

# def print_songs
#   @songs.each do |song|
#     puts song.name 
#   end
# end

# end



# #@@ for class variables and @ for instances variables 