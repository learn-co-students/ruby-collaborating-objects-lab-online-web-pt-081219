



























# #parse filenames and send to Song class
# #should have path attribute in intialzation
# #two methods: files and import

# class MP3Importer
  
#   attr_accessor :path
  
#   def initialize(path)
#     @path = path
#   end
  
#   def files
#     Dir.entries(path).select {|entry| entry.include?("mp3")}
#   #   @files = []
#   #   file. Dir.entries(@path)
#   #   file.each do |file|
#   #     if file.include? ("mp3")
#   #       @files << file
#   #     end
#   #   end
#   #   @files
#   # end
# end

# def import
#   files.each {|filename| Song.new_by_filename(filename)}
# end
# end