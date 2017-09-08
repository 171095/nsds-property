# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

properties = Property.create([{name: "Mannat", address_line1: "Sector-c", address_line2: "Vijaynagar Indore", property_type: "Family House", property_size: 3500, rental_price: 80000, description: "Pending"},{name: "jannat", address_line1: "Sector-d", address_line2: "palasia Indore", property_type: "Family House", property_size: 4500 ,rental_price: 85000, description: "Pending"},{name: "X-villa", address_line1: "Sector-c", address_line2: "Vijaynagar Indore", property_type: "private Room", property_size: 3500, rental_price: 5000, description: "Pending"},{name: "Northout", address_line1: "CW-300", address_line2: "Vijaynagar Indore", property_type: "Private office", property_size: 3500, rental_price: 80000, description: "Pending"},{name: "Country-Tower", address_line1: "Sector-c", address_line2: "Vijaynagar Indore", property_type: "private Room", property_size: 3500, rental_price: 80000, description: "Pending"}])

states = State.create([{name: "Andhra-Pradesh"}, 
                       {name: "Arunalchal-Pradesh"},
                       {name: "Assam"}, 
                       {name: "Bihar"},
                       {name: "Chhattisgarh"}, 
                       {name: "Goa"}, 
                       {name: "Gujarat"}, 
                       {name: "Haryana"}, 
                       {name: "Himachal-Pradesh"}, 
                       {name: "Jammu & Kashmir"}, 
                       {name: "Jharkhand"}, 
                       {name: "Karnataka"}, 
                       {name: "Kerala"}, 
                        
                       {name: "Madhya-Pradesh"}, 
                       {name: "Maharashtra"}, 
                       {name: "Manipur"}, 
                       {name: "Meghalaya"}, 
                       {name: "Mizoram"}, 
                       {name: "Nagaland"}, 
                       {name: "Odisha"}, 
                       {name: "Punjab"}, 
                       {name: "Rajasthan"}, 
                       {name: "Sikkim"}, 
                       {name: "Tamil Nadu"}, 
                       {name: "Telangana"}, 
                       {name: "Tripura"}, 
                       {name: "Uttarakhand"}, 
                       {name: "Uttar-Pradesh"}, 
                       {name: "West Bengal"}])

city = City.create([{name: "Hyderabad", state_id: 1},
                    {name: "Itanagar", state_id: 2},
                    {name: "Dispur", state_id: 3},
                    {name: "Patna", state_id: 4},
                    {name: "Railpur", state_id: 5},
                    {name: "Panaji", state_id: 6},
                    {name: "Gandhinagar", state_id: 7},
                    {name: "Chandigarh", state_id: 8},
                    {name: "Shimla", state_id: 9},
                    {name: "Srinagar", state_id: 10},
                    {name: "Ranchi", state_id: 11},
                    {name: "Bangalore", state_id: 12}, 
                    {name: "Thiruvananthapuram", state_id: 13},
                    {name: "Bhopal", state_id: 14},
                    {name: "Mumbai", state_id: 15},
                    {name: "Imphal", state_id: 16},
                    {name: "Shilong", state_id: 17},
                    {name: "Aizwal", state_id: 18},
                    {name: "Kohima", state_id: 19}, 
                    {name: "Bhubaneshwar", state_id: 20},
                    {name: "Mohali", state_id: 21},
                    {name: "Jaipur", state_id: 22},
                    {name: "Gangtok", state_id: 23},
                    {name: "Chennai", state_id: 24},
                    {name: "Warangal", state_id: 25},
                    {name: "Agartala", state_id: 26},
                    {name: "Dehradun", state_id: 27},
                    {name: "Lucknow", state_id: 28},
                    {name: "Kolkata", state_id: 29}])
