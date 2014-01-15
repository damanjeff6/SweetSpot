class Restaurant < ActiveRecord::Base
  attr_accessible :name, :phone, :url

  has_one :address
  has_many :reviews
  has_many :ratings

  validates :name, :presence => true
end
