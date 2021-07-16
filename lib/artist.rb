class Artist

attr_accessor :name

@@all = []

def initialize(name)
    @name=name
    @@all << self
end

def self.song_count
    Song.all.count
end

def songs
    Song.all.select {|indsong| indsong.artist == self}
end

end