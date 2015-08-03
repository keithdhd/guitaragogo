class Song < ActiveRecord::Base
  has_and_belongs_to_many :genres
  has_many :lessons
  belongs_to :saved_song
end
