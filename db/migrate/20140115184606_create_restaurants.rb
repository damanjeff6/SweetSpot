class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name, :null => false
      t.string :phone
      t.string :url

      t.timestamps
    end

    add_index :restaurants, :name
  end
end
