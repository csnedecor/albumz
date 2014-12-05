class Albums < ActiveRecord::Migration
  def change
    create_table :albums do |table|
      table.string :name
      table.string :description
    end
  end
end
