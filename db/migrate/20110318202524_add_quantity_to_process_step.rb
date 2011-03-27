class AddQuantityToProcessStep < ActiveRecord::Migration
  def self.up
    add_column :process_steps, :quantity, :integer
  end

  def self.down
    remove_column :process_steps, :quantity
  end
end
