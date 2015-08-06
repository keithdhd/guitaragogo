class Lesson < ActiveRecord::Base
    belongs_to :instrument
  belongs_to :song
  belongs_to :teacher, class_name:'User', foreign_key:'teacher_id'
end
