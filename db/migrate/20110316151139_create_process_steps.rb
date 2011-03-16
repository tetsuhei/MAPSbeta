class CreateProcessSteps < ActiveRecord::Migration
  def self.up
    create_table :process_steps do |t|
      t.integer :fab_process_id
      t.integer :process_flow_id

      t.timestamps
    end
  end

  def self.down
    drop_table :process_steps
  end
end
