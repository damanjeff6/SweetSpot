class Picture < ActiveRecord::Base
  attr_accessible :photo, :caption, :restaurant_id

  belongs_to :restaurant

  validates :restaurant, :photo, :presence => true

  has_attached_file :photo , styles: { big: "800<>x540<>" }
end