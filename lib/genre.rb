class Genre

    attr_accessor :name
    attr_reader :name

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.select { |song| song.genre == self }
    end

    def artists
        self.songs.collect { |song| song.artist }
    end

end