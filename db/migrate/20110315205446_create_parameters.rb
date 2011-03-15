class CreateParameters < ActiveRecord::Migration
  def self.up
    create_table :parameters do |t|
      t.string :name
      t.decimal :optimum_value
      t.decimal :tolerance
      t.string :units

      t.timestamps
    end
  end

  def self.down
    drop_table :parameters
  end
end
