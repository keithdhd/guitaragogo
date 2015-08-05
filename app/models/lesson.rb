class Lesson < ActiveRecord::Base
  acts_as_votable
  
  belongs_to :instrument
  belongs_to :song
  belongs_to :teacher, class_name:'User', foreign_key:'teacher_id'
end
