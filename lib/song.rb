class Song
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def save << self

  def self.all
    @@all
  end
end
