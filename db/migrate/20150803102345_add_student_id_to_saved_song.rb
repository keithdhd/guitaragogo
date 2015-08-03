class AddStudentIdToSavedSong < ActiveRecord::Migration
  def change
    add_column :saved_songs, :student_id, :integer
  end
end
