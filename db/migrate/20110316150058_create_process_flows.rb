class CreateProcessFlows < ActiveRecord::Migration
  def self.up
    create_table :process_flows do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :process_flows
  end
end
