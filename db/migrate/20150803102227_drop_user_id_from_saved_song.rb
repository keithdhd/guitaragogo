class DropUserIdFromSavedSong < ActiveRecord::Migration
  def change
    remove_column :saved_songs, :user_id, :integer
  end
end
