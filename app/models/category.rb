class Category < ActiveRecord::Base
  attr_accessible :restaurant_id, :cake, :cookies, :crepes, :cupcakes, :yogurt, :fruit, :icecream, :tea

  belongs_to :restaurant, :inverse_of => :category
  validates :restaurant, :presence => true
end