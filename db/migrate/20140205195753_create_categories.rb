class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer :restaurant_id, :null => false
      t.boolean :cake, :default => false
      t.boolean :cookies, :default => false
      t.boolean :crepes, :default => false
      t.boolean :cupcakes, :default => false
      t.boolean :yogurt, :default => false
      t.boolean :fruit, :default => false
      t.boolean :icecream, :default => false
      t.boolean :tea, :default => false
      
      t.timestamps
    end
    
    add_index :categories, :restaurant_id
  end
end