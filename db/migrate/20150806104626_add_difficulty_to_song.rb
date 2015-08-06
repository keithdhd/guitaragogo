class AddDifficultyToSong < ActiveRecord::Migration
  def change
    add_column :songs, :difficulty, :string
  end
end
