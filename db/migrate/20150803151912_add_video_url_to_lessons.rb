class AddVideoUrlToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :video_url, :string
  end
end
