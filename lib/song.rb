require 'pry'
class Song

attr_accessor :name, :artist, :genre

@@count = 0
@@genres = []
@@artists = []
#
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
  @@genres.each_with_object(Hash.new(0)) { |word,counts| counts[word] += 1 }
  # count_genre = Hash.new
  # @@genres.each do |element|
  # unless count_genre.include?(element)
  # count_genre[element] += 1
  # puts count_genre
end

def self.artist_count
  @@artists.each_with_object(Hash.new(0)) { |word,counts| counts[word] += 1 }

end


end # end of song
