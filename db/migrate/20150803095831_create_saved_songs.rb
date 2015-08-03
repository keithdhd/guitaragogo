class CreateSavedSongs < ActiveRecord::Migration
  def change
    create_table :saved_songs do |t|
      t.references :user, index: true, foreign_key: true
      t.references :song, index: true, foreign_key: true
      t.references :status, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
