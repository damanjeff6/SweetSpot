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
Address.create!(:restaurant_id => 1, :line1 => '432 Octavia St', :line2 => 'Ste 1A', :city => 'San Francisco', :state => 'CA', :zip => '94102', :lat => '37.776386', :lng => '-122.424261')
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
Address.create!(:restaurant_id => 5, :line1 => '1581 Webster St', :line2 => '', :city => 'San Francisco', :state => 'CA', :zip => '94115', :lat => '37.785082', :lng => '-122.431557')
Category.create!(:restaurant_id => 5, :crepes => true, :icecream => true, :fruit => true)

Restaurant.create!(:name => 'Tartine Bakery & Cafe', :phone => '(415) 487-2600', :url => 'tartinebakery.com')
Address.create!(:restaurant_id => 6, :line1 => '600 Guerrero St', :line2 => '', :city => 'San Francisco', :state => 'CA', :zip => '94110', :lat => '37.7614184', :lng => '-122.4241038')
Category.create!(:restaurant_id => 6, :cake => true)

Restaurant.create!(:name => 'Genki Crepes', :phone => '(415) 379-6414', :url => 'genkicrepes.com')
Address.create!(:restaurant_id => 7, :line1 => '330 Clement St', :line2 => '', :city => 'San Francisco', :state => 'CA', :zip => '94118', :lat => '37.7830365', :lng => '-122.4628617')
Category.create!(:restaurant_id => 7, :crepes => true, :icecream => true, :fruit => true)

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
Category.create!(:restaurant_id => 13, :cake => true, :cookies => true, :fruit => true)

Restaurant.create!(:name => 'Chile Pies & Ice Cream', :phone => '(415) 614-9411', :url => 'greenchilekitchen.com/')
Address.create!(:restaurant_id => 14, :line1 => '601 Baker St', :line2 => '', :city => 'San Francisco', :state => 'CA', :zip => '94117', :lat => '37.776452', :lng => '-122.441494')
Category.create!(:restaurant_id => 14, :cake => true, :icecream => true)

Restaurant.create!(:name => 'Bicyclette', :phone => '(415) 379-8023', :url => 'bicyclettesf.com')
Address.create!(:restaurant_id => 15, :line1 => '1661 Tennessee St', :line2 => '', :city => 'San Francisco', :state => 'CA', :zip => '94107', :lat => '37.750231', :lng => '-122.387888')
Category.create!(:restaurant_id => 15, :cake => true)

Restaurant.create!(:name => 'Holy Gelato!', :phone => '(415) 681-3061', :url => 'holygelato.com')
Address.create!(:restaurant_id => 16, :line1 => '1392 9th Ave', :line2 => '', :city => 'San Francisco', :state => 'CA', :zip => '94122', :lat => '37.762422', :lng => '-122.466091')
Category.create!(:restaurant_id => 16, :icecream => true)

Restaurant.create!(:name => 'Yasukochi\'s Sweet Stop', :phone => '(415) 931-8165', :url => 'yelp.com/biz/yasukochis-sweet-stop-san-francisco')
Address.create!(:restaurant_id => 17, :line1 => '1790 Sutter St', :line2 => '', :city => 'San Francisco', :state => 'CA', :zip => '94115', :lat => '37.786547', :lng => '-122.429702')
Category.create!(:restaurant_id => 17, :cake => true)

Restaurant.create!(:name => 'Creations Dessert House', :phone => '(415) 668-8812', :url => 'creationsdessert.com')
Address.create!(:restaurant_id => 18, :line1 => '5217 Geary Blvd', :line2 => '', :city => 'San Francisco', :state => 'CA', :zip => '94118', :lat => '37.780341', :lng => '-122.475481')
Category.create!(:restaurant_id => 18, :cake => true, :fruit => true)

Restaurant.create!(:name => 'Golden Island Cafe', :phone => '(415) 759-9118', :url => 'yelp.com/biz/golden-island-cafe-san-francisco')
Address.create!(:restaurant_id => 19, :line1 => '1300 Noriega St', :line2 => '', :city => 'San Francisco', :state => 'CA', :zip => '94122', :lat => '37.754446', :lng => '-122.477654')
Category.create!(:restaurant_id => 19, :fruit => true, :tea => true)

Restaurant.create!(:name => 'Kowloon Tong Dessert Cafe', :phone => '(415) 876-1289', :url => 'yelp.com/biz/kowloon-tong-dessert-cafe-san-francisco')
Address.create!(:restaurant_id => 20, :line1 => '393 7th Ave', :line2 => '', :city => 'San Francisco', :state => 'CA', :zip => '94118', :lat => '37.781361', :lng => '-122.465615')
Category.create!(:restaurant_id => 20, :fruit => true, :icecream => true)

Restaurant.create!(:name => 'ETC Dessert Cafe', :phone => '(415) 566-3099', :url => 'yelp.com/biz/etc-dessert-cafe-san-francisco')
Address.create!(:restaurant_id => 21, :line1 => '1919 Irving St', :line2 => '', :city => 'San Francisco', :state => 'CA', :zip => '94122', :lat => '37.763482', :lng => '-122.478678')
Category.create!(:restaurant_id => 21, :fruit => true, :icecream => true, :tea => true)

Restaurant.create!(:name => '100% Sweet Cafe', :phone => '(415) 221-1628', :url => 'yelp.com/biz/100-sweet-cafe-san-francisco')
Address.create!(:restaurant_id => 22, :line1 => '2512 Clement St', :line2 => '', :city => 'San Francisco', :state => 'CA', :zip => '94121', :lat => '37.782187', :lng => '-122.486294')
Category.create!(:restaurant_id => 22, :fruit => true, :icecream => true, :tea => true)

Restaurant.create!(:name => 'Hot Cookie', :phone => '(415) 621-2350', :url => 'yelp.com/biz/hot-cookie-san-francisco')
Address.create!(:restaurant_id => 23, :line1 => '407 Castro St', :line2 => '', :city => 'San Francisco', :state => 'CA', :zip => '94114', :lat => '37.762327', :lng => '-122.435095')
Category.create!(:restaurant_id => 23, :cookies => true)

Restaurant.create!(:name => 'Beard Papa\'s Cream Puffs', :phone => '(415) 978-9972', :url => 'yelp.com/biz/yasukochis-sweet-stop-san-francisco')
Address.create!(:restaurant_id => 24, :line1 => '99 Yerba Buena Ln', :line2 => '', :city => 'San Francisco', :state => 'CA', :zip => '94103', :lat => '37.785198', :lng => '-122.403885')
Category.create!(:restaurant_id => 24, :icecream => true, :tea => true)

Restaurant.create!(:name => 'Kara\'s Cupcakes', :phone => '(415) 351-2253', :url => 'karascupcakes.com')
Address.create!(:restaurant_id => 25, :line1 => '900 N Point St', :line2 => '', :city => 'San Francisco', :state => 'CA', :zip => '94109', :lat => '37.805659', :lng => '-122.422308')
Category.create!(:restaurant_id => 25, :cupcakes => true)

Restaurant.create!(:name => 'Loving Cup', :phone => '(415) 440-6900', :url => 'lovingcupsf.com')
Address.create!(:restaurant_id => 26, :line1 => '2356 Polk St', :line2 => '', :city => 'San Francisco', :state => 'CA', :zip => '94109', :lat => '37.798643', :lng => '-122.422151')
Category.create!(:restaurant_id => 26, :icecream => true)

Restaurant.create!(:name => 'Chantal Guillon Macarons', :phone => '(415) 864-2400', :url => 'chantalguillon.com')
Address.create!(:restaurant_id => 27, :line1 => '437 Hayes St', :line2 => '', :city => 'San Francisco', :state => 'CA', :zip => '94102', :lat => '37.776734', :lng => '-122.423669')
Category.create!(:restaurant_id => 27)
end