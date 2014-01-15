class Address < ActiveRecord::Base
  attr_accessible :restaurant_id, :line1, :line2, :city, :state, :zip

  belongs_to :restaurant

  validates :restaurant, :line1, :city, :state, :zip, :presence => true
end
