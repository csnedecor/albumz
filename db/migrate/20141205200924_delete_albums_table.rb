class DeleteAlbumsTable < ActiveRecord::Migration
  def self.up
    drop_table :albums
  end

  def self.down
    raise ActiveRecord::IrreversibleMigration
  end
end
