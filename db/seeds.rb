User.create(email: "employee01@lougeh.com", password: "123456", password_confirmation: "123456")
puts "User has been created"
User.create(email: "employee02@lougeh.com", password: "123456", password_confirmation: "123456")
puts "User has been created"
AdminUser.create(email: "admin@lougeh.com", password: "123456", password_confirmation: "123456")
puts "Admin has been created"   
# Customer
Customer.create(name: "Dennis Ritchie", contact: "1234567890", address: "West Binabag, Tayud Consolacion Cebu")
Customer.create(name: "Bjarne Stroustrup", contact: "1234567890", address: "1710 Remegio Street, Metro Manila")
Customer.create(name: "James Gosling", contact: "1234567890", address: "Wack-Wack Twin Towers 1500, Mandaluyong City")
Customer.create(name: "Linus Torvalds", contact: "1234567890", address: "Suite 1212 The Medical Plaza, San Miguel Avenu, Pasic City Metro Manila")
Customer.create(name: "Anders Hejlsberg", contact: "1234567890", address: "B1 L3-4 Aries Street, Las Pinas Metro Manila")
Customer.create(name: "Tim Berners-Lee", contact: "1234567890", address: "Barangay Poblacion Nara")
Customer.create(name: "Brian Kernighan", contact: "1234567890", address: "238 EDSA, Balintawak,  Quezon City Metro Manila")
Customer.create(name: " Ken Thompson", contact: "1234567890", address: "Rm. 409 Aurelio Building I I Rizal Avenue Ext. Cor. 11th Avenue 1400, Caloocan City")
Customer.create(name: "Guido van Rossum", contact: "1234567890", address: "107 Herrera St., Legaspi Village, NCR Makati City")
Customer.create(name: "Donald Knuth", contact: "1234567890", address: "116 Sauyo Road 1100, Quezon City")
puts "10 customers has been created"
# company
Company.create(name: "UNIVERSAL ROBINA CORPORATION", contact:"285169888" , address:"6th-10th Floors Tera Tower Bridgetowne, E. Rodriguez Jr. Avenue (C5 Road) Ugong Norte Quezon, Manila, 1110 Philippines" )
Company.create(name:"NESTLE PHILIPPINES, INC." ,contact:"288980001" , address:"Km. 46, Barangay Niugan Cabuyao, Laguna" )
Company.create(name:"MONDE NISSIN CORPORATION" ,contact:"277548245" , address:"Felix Reyes Street, Barangay Balibago Sta. Rosa, Laguna, 4026 Philippines" )
Company.create(name:"COCA-COLA BEVERAGES PHILIPPINES, INC." ,contact:"288662145" , address:"28th Floor Net Lima Building 5th Avenue corner 26th Street, Bonifacio Global City Taguig, Manila, 1634 Philippines" )
Company.create(name:"UNILEVER PHILIPPINES, INC." ,contact:"9088806129" , address:"10th Floor Bonifacio Stopover Corporate Center 31st Street corner 2nd Avenue, Bonifacio Global City Taguig, Manila, 1634 Philippines" )
Company.create(name:"ZENITH FOODS CORPORATION" ,contact:"286883000" , address:"Carmelray Industrial Park I, Integrity Avenue, Barangay Canlubang Calamba, Laguna, 4027 Philippines" )
Company.create(name:"NUTRI-ASIA, INC." ,contact:"286622888" , address:"7th-9th Floors JY Campos Centre 9th Avenue corner 30th Street, Bonifacio Global City Taguig, Manila, 1634 Philippines" )
Company.create(name:"THIRD MILLENNIUM OIL MILLS, INC." ,contact:"282543824" , address:"358 Quezon Avenue Barangay Doña Josefa Quezon, Manila, 1100 Philippines" )
Company.create(name:"MONDELEZ PHILIPPINES, INC." ,contact:"288582500" , address:"8378 Dr. A. Santos Avenue, Sucat Paranaque, Manila, 1700 Philippines" )
Company.create(name:"SAN MIGUEL CORP-AGRIBUSINESS DIVISION" ,contact:"288195506" , address:"6/F SEDDCO BLDG RADE ST. LEGASPI VILLAGE Makati, Manila, 1200 Philippines" )
puts "10 compnay has been created"
# Products
Product.create(description: "Bear Brand Fortified Powdered Milk Drink 2kg")
Product.create(description: "Ellie Palm Oil Pouch 1L")
Product.create(description: "Nestle Coffee-Matte Coffee Creame")
Product.create(description: "Nissin Eggnog Cookies 32G")
Product.create(description: "Purefoods Corned Beef 150g")
Product.create(description: "Quaker Instant Oatmeal 800g")
Product.create(description: "Lucky Me! Pancit Canton Instant")
Product.create(description: "555 Sardines in Tomato Sauses")
Product.create(description: "Mug Rootbeer 1.5L")
Product.create(description: "Kukis Mochachino (60g)")
puts "10 Product has been created"
#Item Inventory
ItemInventory.create(product_id: 1, quantity: 0)
ItemInventory.create(product_id: 2, quantity: 0)
ItemInventory.create(product_id: 3, quantity: 0)
ItemInventory.create(product_id: 4, quantity: 0)
ItemInventory.create(product_id: 5, quantity: 0)
ItemInventory.create(product_id: 6, quantity: 0)
ItemInventory.create(product_id: 7, quantity: 0)
ItemInventory.create(product_id: 8, quantity: 0)
ItemInventory.create(product_id: 9, quantity: 0)
ItemInventory.create(product_id: 10, quantity: 0)
puts "Inventory has been updated"