require 'faker'
 
 # Create Advertisements
 15.times do
   Advertisement.create!(
     title:  Faker::Commerce.department,
     copy:   Faker::Commerce.product_name,
     price:  Faker::Commerce.price
   )
 end

 
 puts "Seed finished"
 puts "#{Advertisement.count} advertisements created"
# puts "#{Comment.count} comments created"
