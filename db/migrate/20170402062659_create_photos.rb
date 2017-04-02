class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :image_file_name
      t.string :image_content_type
      t.string :image_file_size
      t.float :height
      t.float :width
      t.has_attached_file :image
      t.references :cohabitant
      t.timestamps null: false
    end
  end
end
