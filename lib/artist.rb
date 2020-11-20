
class Artist
    @@all = []
    attr_accessor :name
    def initialize(name)
      self.name = name
      self.class.all.push(self)
    end
 
    def new_song(name, genre)
      Song.new(name, self, genre)
    end
 
    def songs
      Song.all.select do |song|
        song.artist == self
      end
    end
 
    def genres
      songs.collect do |song|
        song.genre
      end
    end
 
    def self.all
      @@all
    end
  end



