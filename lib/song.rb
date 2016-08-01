class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres= []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
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
    genre_count_hash = Hash.new
    @@genres.each do |genre|
      genre_count_hash[genre] = @@genres.count(genre)
    end
    genre_count_hash
  end

  def self.artist_count
    artist_count_hash = Hash.new
    @@artists.each do |artist|
      artist_count_hash[artist] = @@artists.count(artist)
    end
    artist_count_hash
  end

end
