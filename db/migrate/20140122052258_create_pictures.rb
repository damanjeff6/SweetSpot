class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.integer :restaurant_id, :null => false
      t.attachment :photo
      t.text :caption

      t.timestamps
    end

    add_index :pictures, :restaurant_id
  end
end
