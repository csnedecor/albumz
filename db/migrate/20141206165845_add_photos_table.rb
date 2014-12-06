class AddPhotosTable < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string   "photo_file_name"
      t.string   "photo_content_type"
      t.integer  "photo_file_size"
      t.datetime "photo_updated_at"
    end
    remove_column :albums, :photo_file_name, :string
    remove_column :albums, :photo_content_type, :string
    remove_column :albums, :photo_file_size, :string
    remove_column :albums, :photo_updated_at, :string
  end
end
