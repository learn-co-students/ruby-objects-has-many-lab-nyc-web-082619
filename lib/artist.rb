class Artist
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def add_song(song)
        Song.new(song.title, self)
    end

    def add_song_by_name(title)
        Song.new(title, self)
    end

    def songs
        Song.all.select{|song| song.artist == self}
    end

    
end
