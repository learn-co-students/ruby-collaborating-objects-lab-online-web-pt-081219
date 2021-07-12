require 'pry-byebug'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
    import()
  end

  def import
    mp3files = File.join("**", "*.mp3")
    @files = Dir.glob(mp3files)
    @files.each do |file|
      cleaned = file.chomp(".mp3").split("spec/fixtures/mp3s/")[1]
      Song.new_by_filename(cleaned)
    end
  end

  def files
    if @files.nil?
      puts "whoops! Empty directory."
    else
      @files.map do |path_and_file|
        path_and_file.split("spec/fixtures/mp3s/")[1]
      end
    end
  end
end