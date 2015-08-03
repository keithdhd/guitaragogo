class Lesson < ActiveRecord::Base
  belongs_to :user
  belongs_to :instrument
  belongs_to :song
end
