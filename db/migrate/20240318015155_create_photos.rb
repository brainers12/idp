class CreatePhotos < ActiveRecord::Migration[7.1]
  def change
    create_table :photos do |t|
      t.integer :album_id
      t.string :title
      t.string :url
      t.string :thumbnail_url

      t.timestamps
    end
  end
end
