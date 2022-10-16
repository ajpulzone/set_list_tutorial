class Artist < ApplicationRecord
  has_many :songs

  #how you would define the songs method if you did not have the 
  #has_many :songs relationship defined with active record
  # def songs
  #   Song.where(artist_id: self.id)
  # end

  def average_song_length
    self.songs.average(:length)
  end

  def song_count
    self.songs.count
  end

  #This works for both versions
  def wrote_song?(song)
    songs.include?(song)
  end
end