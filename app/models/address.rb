class Address < ActiveRecord::Base
  attr_accessible :restaurant_id, :line1, :line2, :city, :state, :zip, :lat, :lng

  belongs_to :restaurant, :inverse_of => :address
  validates :restaurant, :line1, :city, :state, :zip, :presence => true
end
