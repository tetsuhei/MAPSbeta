class CreateFabProcesses < ActiveRecord::Migration
  def self.up
    create_table :fab_processes do |t|
      t.string :name
      t.string :category
      t.integer :parameter_id

      t.timestamps
    end
  end

  def self.down
    drop_table :fab_processes
  end
end
