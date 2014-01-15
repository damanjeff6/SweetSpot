class Review < ActiveRecord::Base
  attr_accessible :user_id, :restaurant_id, :body

  belongs_to :user
  belongs_to :restaurant

  validates :user, :restaurant, :body, :presence => true
end
