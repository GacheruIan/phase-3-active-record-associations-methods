class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    genre_count = Genre.first
    genre_count.songs.count
  end

  def artist_count
    # return the number of artists associated with the genre
    genre_artist = Genre.last
    genre_artist.artists.count
  end

  def all_artist_names
    # return an array of strings containing every musician's name
    self.artists.map {|artist| artist.name}
  end
end
