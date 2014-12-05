class ChangeDescriptionToText < ActiveRecord::Migration
  def change
      change_column :albums, :description, :text
  end
end
