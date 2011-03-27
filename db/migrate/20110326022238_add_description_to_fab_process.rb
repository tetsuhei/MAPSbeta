class AddDescriptionToFabProcess < ActiveRecord::Migration
  def self.up
    add_column :fab_processes, :description, :text
  end

  def self.down
    remove_column :fab_processes, :description
  end
end
