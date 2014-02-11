class Picture < ActiveRecord::Base
  attr_accessible :photo, :caption, :restaurant_id

  belongs_to :restaurant

  validates :restaurant, :photo, :presence => true

  has_attached_file :photo , styles: { big: "778x540!", small: "470x350!"}
end