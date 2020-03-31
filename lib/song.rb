class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(song_name, artist, genre)
    @name = song_name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq!
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genre_count
    genre_hash = {}
    @@genres.map do |genre_name|
      if genre_hash.include?(genre_name) == true
        genre_hash[genre_name] += 1
      else
        genre_hash[genre_name] = num
      end
    end

  end

end
