class AddStatusToSavedSong < ActiveRecord::Migration
  def change
    add_column :saved_songs, :status, :string
  end
end
