class Review < ActiveRecord::Base
  attr_accessible :user_id, :restaurant_id, :body, :rating

  belongs_to :user
  belongs_to :restaurant

  validates :user, :restaurant, :rating, :presence => true
end
