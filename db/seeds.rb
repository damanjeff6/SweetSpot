# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or create!d alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create!([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create!(name: 'Emanuel', city: cities.first)

ActiveRecord::Base.transaction do

# San Francisco
Restaurant.create!(:name => 'Smitten Ice Cream', :phone => '(415) 863-1518', :url => 'smittenicecream.com')
Address.create!(:restaurant_id => 1, :line1 => '432 Octavia St', :line2 => 'Ste 1A', :city => 'San Francisco', :state => 'CA', :zip => '94102', :lat => '37.775362', :lng => '-122.422972')
Category.create!(:restaurant_id => 1, :icecream => true)

Restaurant.create!(:name => 'Pinkberry', :phone => '(415) 391-1529', :url => 'pinkberry.com')
Address.create!(:restaurant_id => 2, :line1 => '170 O\'Farrell St', :line2 => '', :city => 'San Francisco', :state => 'CA', :zip => '94102', :lat => '37.776414', :lng => '-122.424259')
Category.create!(:restaurant_id => 2, :yogurt => true)

Restaurant.create!(:name => 'Cako', :phone => '(415) 895-2256', :url => 'cako.com')
Address.create!(:restaurant_id => 3, :line1 => '211 O\'Farrell St', :line2 => '', :city => 'San Francisco', :state => 'CA', :zip => '94102', :lat => '37.786589', :lng => '-122.407436')
Category.create!(:restaurant_id => 3, :cupcakes => true)

Restaurant.create!(:name => 'Pinkie\'s Bakery', :phone => '(415) 556-4900', :url => 'pinkiesbakerysf.com')
Address.create!(:restaurant_id => 4, :line1 => '1196 Folsom St', :line2 => 'Ste 342', :city => 'San Francisco', :state => 'CA', :zip => '94103', :lat => '37.775044', :lng => '-122.410035')
Category.create!(:restaurant_id => 4, :cupcakes => true, :cake => true)

Restaurant.create!(:name => 'Sophie\'s Crepes', :phone => '(415) 929-7732', :url => '')
Address.create!(:restaurant_id => 5, :line1 => '1581 Webster St', :line2 => '', :city => 'San Francisco', :state => 'CA', :zip => '94115', :lat => '37.7850816', :lng => '-122.4315573')
Category.create!(:restaurant_id => 5, :crepes => true, :icecream => true)

Restaurant.create!(:name => 'Tartine Bakery & Cafe', :phone => '(415) 487-2600', :url => 'tartinebakery.com')
Address.create!(:restaurant_id => 6, :line1 => '600 Guerrero St', :line2 => '', :city => 'San Francisco', :state => 'CA', :zip => '94110', :lat => '37.7614184', :lng => '-122.4241038')
Category.create!(:restaurant_id => 6, :cake => true)

Restaurant.create!(:name => 'Genki Crepes', :phone => '(415) 379-6414', :url => 'genkicrepes.com')
Address.create!(:restaurant_id => 7, :line1 => '330 Clement St', :line2 => '', :city => 'San Francisco', :state => 'CA', :zip => '94118', :lat => '37.7830365', :lng => '-122.4628617')
Category.create!(:restaurant_id => 7, :crepes => true, :icecream => true)

Restaurant.create!(:name => 'Purple Kow', :phone => '(415) 387-9009', :url => 'purplekow.com')
Address.create!(:restaurant_id => 8, :line1 => '3620 Balboa St', :line2 => '', :city => 'San Francisco', :state => 'CA', :zip => '94121', :lat => '37.7757829', :lng => '-122.497728')
Category.create!(:restaurant_id => 8, :tea => true)

Restaurant.create!(:name => 'Miette Patisserie', :phone => '(415) 837-0300', :url => 'miette.com')
Address.create!(:restaurant_id => 9, :line1 => '1 Ferry Bldg', :line2 => 'Ste 10', :city => 'San Francisco', :state => 'CA', :zip => '94111', :lat => '37.7976478', :lng => '-122.4104453')
Category.create!(:restaurant_id => 9, :cupcakes => true, :cake => true)

Restaurant.create!(:name => 'Anthony\'s Cookies', :phone => '(415) 655-9834', :url => 'anthonyscookies.com')
Address.create!(:restaurant_id => 10, :line1 => '1417 Valencia St', :line2 => '', :city => 'San Francisco', :state => 'CA', :zip => '94110', :lat => '37.7501832', :lng => '-122.4203501')
Category.create!(:restaurant_id => 10, :cookies => true)

Restaurant.create!(:name => 'Candybar', :phone => '(415) 673-7078', :url => 'candybarsf.com')
Address.create!(:restaurant_id => 11, :line1 => '1335 Fulton St', :line2 => '', :city => 'San Francisco', :state => 'CA', :zip => '94117', :lat => '37.776538', :lng => '-122.43883')
Category.create!(:restaurant_id => 11, :icecream => true, :cake => true)

Restaurant.create!(:name => 'The Cheesecake Factory', :phone => '(415) 391-4444', :url => 'thecheesecakefactory.com')
Address.create!(:restaurant_id => 12, :line1 => '251 Geary St', :line2 => '8th Fl', :city => 'San Francisco', :state => 'CA', :zip => '94102', :lat => '37.787176', :lng => '-122.407398')
Category.create!(:restaurant_id => 12, :cake => true)

Restaurant.create!(:name => 'Schubert\'s Bakery', :phone => '(415) 752-1580', :url => 'schuberts-bakery.com')
Address.create!(:restaurant_id => 13, :line1 => '521 Clement St', :line2 => '', :city => 'San Francisco', :state => 'CA', :zip => '94118', :lat => '37.782929', :lng => '-122.4649325')
Category.create!(:restaurant_id => 13, :cake => true, :cookies => true)
end