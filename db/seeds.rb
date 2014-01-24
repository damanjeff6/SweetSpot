# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or create!d alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create!([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create!(name: 'Emanuel', city: cities.first)

ActiveRecord::Base.transaction do

Restaurant.create!(:name => 'Smitten Ice Cream', :phone => '(415) 863-1518', :url => 'smittenicecream.com')

Address.create!(:restaurant_id => 1, :line1 => '432 Octavia St', :line2 => 'Ste 1A', :city => 'San Francisco', :state => 'CA', :zip => '94102', :lat => '37.775362', :lng => '-122.422972')

Restaurant.create!(:name => 'Pinkberry', :phone => '(415) 391-1529', :url => 'pinkberry.com')

Address.create!(:restaurant_id => 2, :line1 => '170 O\'Farrell St', :line2 => '', :city => 'San Francisco', :state => 'CA', :zip => '94102', :lat => '37.776414', :lng => '-122.424259')

Restaurant.create!(:name => 'Cako', :phone => '(415) 895-2256', :url => 'cako.com')

Address.create!(:restaurant_id => 3, :line1 => '211 O\'Farrell St', :line2 => '', :city => 'San Francisco', :state => 'CA', :zip => '94102', :lat => '37.786589', :lng => '-122.407436')

Restaurant.create!(:name => 'Pinkie\'s Bakery', :phone => '(415) 556-4900', :url => 'pinkiesbakerysf.com')

Address.create!(:restaurant_id => 4, :line1 => '1196 Folsom St', :line2 => 'Ste 342', :city => 'San Francisco', :state => 'CA', :zip => '94103', :lat => '37.775044', :lng => '-122.410035')

end

# Review.create!(:user_id => 1, :restaurant_id => 1, :body => 'good food', :rating => 5)
# Review.create!(:user_id => 2, :restaurant_id => 1, :body => 'bad food', :rating => 1)
# Review.create!(:user_id => 1, :restaurant_id => 2, :body => 'great food', :rating => 4)
# Review.create!(:user_id => 1, :restaurant_id => 3, :body => 'ok food', :rating => 3)
# Review.create!(:user_id => 1, :restaurant_id => 4, :body => 'great food', :rating => 4)