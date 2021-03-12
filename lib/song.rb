

class Song
   
    require "pry"

    attr_accessor :artist, :genre, :name
     
    @@artists = []
    @@genres = []
    @@count = 0
    @@hash_genres = {}
    @@hash_artist = {}

    def initialize(name, artist, genre)
       @name = name
       @genre = genre
       @artist = artist
       @@artists << @artist
       @@genres << @genre
       @@count += 1
    end

    def self.count
        @@count            
    end
    
    def self.artists
        @@artists.uniq
    end
    
    def self.genres
       @@genres.uniq 
    end
    
    def self.genre_count
        @@genres.each do |gen|
            @@hash_genres[gen] = @@hash_genres[gen].to_i + 1
        end
        @@hash_genres
    end
    
    def self.artist_count
        @@artists.each do |artist|
            @@hash_artist[artist] = @@hash_artist[artist].to_i + 1
        end
        @@hash_artist
    end
end
