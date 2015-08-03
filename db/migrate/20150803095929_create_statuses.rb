class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :description
      t.references :saved_song, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
