require 'pry'
class Artist 
    attr_accessor :name, :artist
    def initialize(name)
        @name = name 
    end

    def songs
     Song.all
    end

    def add_song(song)
       song.artist = self
    end

    def add_song_by_name(songName)
        newSong = Song.new(songName)
        newSong.artist = self
    end

    def self.song_count
        songCount= Song.all.select do |song|
            song.artist != nil 
        end
       # binding.pry
        songCount.length
    end

end
