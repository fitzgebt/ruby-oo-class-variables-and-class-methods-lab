class Song

    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count = @@count + 1
        @@genres << genre 
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq

    end

    def self.artists
        @@artists.uniq

    end

    def self.genre_count
        temp_genre_hash = {}
        @@genres.each do |genre|
            if temp_genre_hash.has_key?(genre)
                temp_genre_hash[genre]+=1
            else
                temp_genre_hash[genre]
                temp_genre_hash[genre]=1
            end
        end
        return temp_genre_hash
    end

    def self.artist_count
        temp_artist_hash = {}
        @@artists.each do |artist|
            if temp_artist_hash.has_key?(artist)
                temp_artist_hash[artist]+=1
            else
                temp_artist_hash[artist]
                temp_artist_hash[artist]=1
            end
        end
        return temp_artist_hash
    end
end