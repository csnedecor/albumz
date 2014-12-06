class AddPhotoColumnToAlbums < ActiveRecord::Migration
  def change
    add_attachment :albums, :photo
  end
end
