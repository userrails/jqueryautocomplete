# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

	Address.create(:address=>'7304 50 Street NW', :city=>'Edmonton', :country=>'Canada', :zip_code=>'T6B2J8')
	Address.create(:address=>'630 3 Avenue SW', :city=>'Calgary', :country=>'Canada', :zip_code=>'T2P4L4')
	Address.create(:address=>'4705 48 Avenue', :city=>'Red Deer', :country=>'Canada', :zip_code=>'T4N3T1')
	Address.create(:address=>'7520 104 St NW', :city=>'Edmonton', :country=>'Canada', :zip_code=>'T6E6J4')
	
	
