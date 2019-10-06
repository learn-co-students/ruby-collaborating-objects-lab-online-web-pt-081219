class MP3Importer 
    attr_accessor :path

    def initialize(path)
        @path = path
    end 

    def files 
        Dir.entries(@path).select {|x| x.include?(".mp3")}
    end 

    def import 
        self.files.each do |x| 
            Song.new_by_filename(x)
        end 
    end 
end