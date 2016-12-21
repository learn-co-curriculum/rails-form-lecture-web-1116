class Song < ApplicationRecord
  has_many :song_genres
  has_many :genres, through: :song_genres
  has_many :song_artists
  has_many :artists, through: :song_artists
end
