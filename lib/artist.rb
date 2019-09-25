class Artist 
    attr_accessor :name
    @@all = [] 

  def initialize(name)
    @name = name
    @songs = []
     save
     # @@all = [] dont put here otherwise youll reset everytime.
end

  def save #instance method 
  @@all << self # this self is referring to instance of Artist not class because it's in a instance method. or instance scope
  end

  def self.all #class method: self would refer to class
  @@all 
  end

  def songs # all of our artist instance songs
  @songs 
  end
  
  def add_song(song)
  @songs << song
  end


def self.find(name) # method for when it finds a artist to turn it
@@all.find {|artist| artist.name == name} #{ <-replaces do...  replaces end -> }
  
end # <def end

  def self.find_or_create_by_name(name) # when an artist isn't found.. create it.
  self.find(name)? self.find(name):  Artist.new(name) # calling THE new method on the Artist class. That's how you creat any new instance on any class. 
  end

  
  # this code here is def self.find(name) through def self.find_or_create_by_name(name) condensed 
  # def self.find_or_create_by_name(name)
  # @@all.find {|artist| artist.name == name}? @@all.find {|artist| artist.name == name}:  Artist.new(name) # calling THE new method on the Artist class. That's how you creat any new instance on any class. 
  # end
  # end  

def print_songs
  @songs.each do |song|
    puts song.name
  end
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