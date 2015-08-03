class User < ActiveRecord::Base
  has_secure_password
  has_many :saved_songs, class_name:'SavedSong', foreign_key: :student_id
  has_many :lessons, class_name:'Lesson', foreign_key: :teacher_id
  has_many :songs, through: :saved_songs

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
end
