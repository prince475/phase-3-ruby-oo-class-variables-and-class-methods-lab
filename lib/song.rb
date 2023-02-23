require 'pry'

class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
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
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    freq = Hash.new(0)
    @@genres.map { |genre| [genre, freq[genre]+=1] }.to_h
  end

  def self.artist_count
    freq = Hash.new(0)
    @@artists.map { |artist| [artist, freq[artist]+=1] }.to_h
  end
end
