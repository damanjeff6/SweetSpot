class Restaurant < ActiveRecord::Base
  attr_accessible :name, :phone, :url, :address_attributes

  has_one :address, :inverse_of => :restaurant
  has_many :reviews
  has_many :pictures

  validates :name, :presence => true
  accepts_nested_attributes_for :address, :reviews
end