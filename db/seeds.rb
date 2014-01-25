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

Restaurant.create!(:name => 'Pinkberry', :phone => '(415) 391-1529', :url => 'pinkberry.com')
Address.create!(:restaurant_id => 2, :line1 => '170 O\'Farrell St', :line2 => '', :city => 'San Francisco', :state => 'CA', :zip => '94102', :lat => '37.776414', :lng => '-122.424259')

Restaurant.create!(:name => 'Cako', :phone => '(415) 895-2256', :url => 'cako.com')
Address.create!(:restaurant_id => 3, :line1 => '211 O\'Farrell St', :line2 => '', :city => 'San Francisco', :state => 'CA', :zip => '94102', :lat => '37.786589', :lng => '-122.407436')

Restaurant.create!(:name => 'Pinkie\'s Bakery', :phone => '(415) 556-4900', :url => 'pinkiesbakerysf.com')
Address.create!(:restaurant_id => 4, :line1 => '1196 Folsom St', :line2 => 'Ste 342', :city => 'San Francisco', :state => 'CA', :zip => '94103', :lat => '37.775044', :lng => '-122.410035')

Restaurant.create!(:name => 'Sophie\'s Crepes', :phone => '(415) 929-7732', :url => '')
Address.create!(:restaurant_id => 5, :line1 => '1581 Webster St', :line2 => '', :city => 'San Francisco', :state => 'CA', :zip => '94115', :lat => '37.7850816', :lng => '-122.4315573')

Restaurant.create!(:name => 'Tartine Bakery & Cafe', :phone => '(415) 487-2600', :url => 'tartinebakery.com')
Address.create!(:restaurant_id => 6, :line1 => '600 Guerrero St', :line2 => '', :city => 'San Francisco', :state => 'CA', :zip => '94110', :lat => '37.7614184', :lng => '-122.4241038')

Restaurant.create!(:name => 'Genki Crepes', :phone => '(415) 379-6414', :url => 'genkicrepes.com')
Address.create!(:restaurant_id => 7, :line1 => '330 Clement St', :line2 => '', :city => 'San Francisco', :state => 'CA', :zip => '94118', :lat => '37.7830365', :lng => '-122.4628617')

Restaurant.create!(:name => 'Purple Kow', :phone => '(415) 387-9009', :url => 'purplekow.com')
Address.create!(:restaurant_id => 8, :line1 => '3620 Balboa St', :line2 => '', :city => 'San Francisco', :state => 'CA', :zip => '94121', :lat => '37.7757829', :lng => '-122.497728')

Restaurant.create!(:name => 'Miette Patisserie', :phone => '(415) 837-0300', :url => 'miette.com')
Address.create!(:restaurant_id => 9, :line1 => '1 Ferry Bldg', :line2 => 'Ste 10', :city => 'San Francisco', :state => 'CA', :zip => '94111', :lat => '37.7976478', :lng => '-122.4104453')

Restaurant.create!(:name => 'Anthony\'s Cookies', :phone => '(415) 655-9834', :url => 'anthonyscookies.com')
Address.create!(:restaurant_id => 10, :line1 => '1417 Valencia St', :line2 => '', :city => 'San Francisco', :state => 'CA', :zip => '94110', :lat => '37.7501832', :lng => '-122.4203501')

Restaurant.create!(:name => 'Candybar', :phone => '(415) 673-7078', :url => 'candybarsf.com')
Address.create!(:restaurant_id => 11, :line1 => '1335 Fulton St', :line2 => '', :city => 'San Francisco', :state => 'CA', :zip => '94117', :lat => '37.776538', :lng => '-122.43883')

Restaurant.create!(:name => 'The Cheesecake Factory', :phone => '(415) 391-4444', :url => 'thecheesecakefactory.com')
Address.create!(:restaurant_id => 12, :line1 => '251 Geary St', :line2 => '8th Fl', :city => 'San Francisco', :state => 'CA', :zip => '94102', :lat => '37.787176', :lng => '-122.407398')

Restaurant.create!(:name => 'Schubert\'s Bakery', :phone => '(415) 752-1580', :url => 'schuberts-bakery.com')
Address.create!(:restaurant_id => 13, :line1 => '521 Clement St', :line2 => '', :city => 'San Francisco', :state => 'CA', :zip => '94118', :lat => '37.782929', :lng => '-122.4649325')

#San Jose Area
Restaurant.create!(:name => 'Yogurtland', :phone => '(408) 996-1776', :url => 'yogurt-land.com')
Address.create!(:restaurant_id => 14, :line1 => '19700 Stevens Creek Blvd', :line2 => '', :city => 'Cupertino', :state => 'CA', :zip => '95014', :lat => '37.3228112', :lng => '-122.0170609')

Restaurant.create!(:name => 'Icing on the Cake', :phone => '(408) 354-2464', :url => 'icingonthecakebakery.com')
Address.create!(:restaurant_id => 15, :line1 => '50 W Main St', :line2 => '', :city => 'Los Gatos', :state => 'CA', :zip => '95030', :lat => '37.2220853', :lng => '-121.9823572')

Restaurant.create!(:name => 'Honeyberry', :phone => '(408) 985-9555', :url => 'www.yelp.com/biz/honeyberry-santa-clara')
Address.create!(:restaurant_id => 16, :line1 => '3488 El Camino Real', :line2 => '', :city => 'Santa Clara', :state => 'CA', :zip => '95051', :lat => '37.3522665', :lng => '-121.9922975')

Restaurant.create!(:name => 'Fantasia Coffee & Tea', :phone => '(408) 865-1689', :url => 'www.yelp.com/biz/fantasia-coffee-and-tea-cupertino')
Address.create!(:restaurant_id => 17, :line1 => '10933 N Wolfe Rd', :line2 => '', :city => 'Cupertino', :state => 'CA', :zip => '95014', :lat => '37.335986', :lng => '-122.0143793')

#Los Angeles
Restaurant.create!(:name => 'Diddy Riese Cookies', :phone => '(310) 208-0448', :url => 'diddyriese.com')
Address.create!(:restaurant_id => 18, :line1 => '926 Broxton Ave', :line2 => '', :city => 'Los Angeles,', :state => 'CA', :zip => '90024', :lat => '34.0630488', :lng => '-118.4468887')

Restaurant.create!(:name => 'Milk', :phone => '(323) 939-6455', :url => 'themilkshop.com')
Address.create!(:restaurant_id => 19, :line1 => '7290 Beverly Blvd', :line2 => '', :city => 'Los Angeles,', :state => 'CA', :zip => '90036', :lat => '34.0760244', :lng => '-118.3485248')

Restaurant.create!(:name => 'Sprinkles Cupcakes', :phone => '(310) 274-8765', :url => 'sprinkles.com')
Address.create!(:restaurant_id => 20, :line1 => '9635 S Santa Monica Blvd', :line2 => '', :city => 'Beverly Hills,', :state => 'CA', :zip => '90210', :lat => '34.069576', :lng => '-118.406077')

Restaurant.create!(:name => 'Urth Caffe', :phone => '(213) 797-4534', :url => 'urthcaffe.com')
Address.create!(:restaurant_id => 21, :line1 => '451 S Hewitt St', :line2 => '', :city => 'Los Angeles,', :state => 'CA', :zip => '90013', :lat => '34.041974', :lng => '-118.235426')

# New York
Restaurant.create!(:name => 'Magnolia Bakery', :phone => '(212) 462-2572', :url => 'magnoliabakery.com')
Address.create!(:restaurant_id => 22, :line1 => '401 Bleecker St', :line2 => '', :city => 'New York,', :state => 'NY', :zip => '10014', :lat => '40.735942', :lng => '-74.0051')

Restaurant.create!(:name => 'Rice To Riches', :phone => '(212) 274-0008', :url => 'ricetoriches.com')
Address.create!(:restaurant_id => 23, :line1 => '37 Spring St', :line2 => '', :city => 'New York,', :state => 'NY', :zip => '10012', :lat => '40.7219213', :lng => '-73.9957822')

end

# Review.create!(:user_id => 1, :restaurant_id => 1, :body => 'good food', :rating => 5)
# Review.create!(:user_id => 2, :restaurant_id => 1, :body => 'bad food', :rating => 1)
# Review.create!(:user_id => 1, :restaurant_id => 2, :body => 'great food', :rating => 4)
# Review.create!(:user_id => 1, :restaurant_id => 3, :body => 'ok food', :rating => 3)
# Review.create!(:user_id => 1, :restaurant_id => 4, :body => 'great food', :rating => 4)