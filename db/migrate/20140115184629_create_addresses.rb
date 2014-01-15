class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :restaurant_id, :null => false
      t.string :line1, :null => false
      t.string :line2
      t.string :city, :null => false
      t.string :state, :null => false
      t.string :zip, :null => false

      t.timestamps
    end

      add_index :addresses, :restaurant_id, :unique => true
      add_index :addresses, :city
      add_index :addresses, :state
      add_index :addresses, :zip
  end
end
