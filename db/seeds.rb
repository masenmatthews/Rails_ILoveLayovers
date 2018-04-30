# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

  products = [
    { name: 'Bleach-Soaked Blanket', price: 48 },
    { name: 'Concrete-Stuffed Neck Pillow', price: 25 },
    { name: 'Box of Candles', price: 20 },
    { name: 'Plastic Bag Eye Mask', price: 10 },
    { name: 'First-Class Food Leftovers', price: 35 },
    { name: 'Sobbing Child Noise Generator', price: 560 },
    { name: 'Leg Room Condenser', price: 30 },
    { name: 'Undrinkable Tap Water', price: 24 },
    { name: 'Chloroform Face Mask', price: 100 } ]

  products.each do |name|
    create_product = Product.new
    create_product.name = name
    create_product.save
end
Product.destroy_all

10.times do |index|
  Quote.create!(quote: Faker::TheFreshPrinceOfBelAir.quote)
end

p "Created #{Quote.count} quotes"
