# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
Product.destroy_all
Quote.destroy_all

  products = [
    { name: 'Bleach-Soaked Blanket', description: "Airplanes are very, very dirty. Luckily, bleach is not. Clean your skin, the seat you're sitting in, and stay warm with one handy do-it-all product!", price: 48 },
    { name: 'Concrete-Stuffed Neck Pillow', description: "For those of us who like our pillows on the firm side. Worried about waking up with your neck hanging in an odd position? We guarantee you'll be holding still with this fine device!", price: 25 },
    { name: 'Box of Candles', description: "This is a standard box of candles. You can't light them on the airplane but we like to provide our loyal customers with a solid variety of options.", price: 20 },
    { name: 'Plastic Bag Eye Mask', description: "I Love Layovers™ values sustainability. Get some shut eye with this 100% semi-recyclable eye mask!", price: 10 },
    { name: 'First-Class Food Leftovers', description: "Looking for a taste of luxury? Tired of feeling like a plebian? Now you can shake that feeling for a few fleeting seconds by eating the leftovers that are generously donated by our wealthier, higher-class guests.", price: 35 },
    { name: 'Sobbing Child Noise Generator', description: "It's easy to see why some people get annoyed by the sounds of children when they're soaring through the air in a giant metal death tube. Show that annoying kid across the aisle who's boss by drowning him out with your very own crying child sounds!", price: 560 },
    { name: 'Leg Room Condenser', description: "What's with all the excess leg room on airplanes nowadays? This is an accesory for those of us who enjoy living small!", price: 30 },
    { name: 'Undrinkable Tap Water', description: "Every cup of undrinkable air plane coffee starts with three things: undrinkable tap water, inedible expired coffee beans, and ambitions. I Love Layovers™ is taking things back to the roots by letting YOU control how you want your consumables to be experienced. We ask that you wait until we land to consume this because our jets are only equipped with one bathroom. Fun fact: Did you know that drinking tap water helps save the planet? Wow!", price: 24 },
    { name: 'Chloroform Face Mask', description: "A clean face is a vital part of a good nights sleep. With our chloroform face wash, you can get a clean face and a good night's sleep in one handy swoop! Guarunteed to put you to sleep before you can say, 'hm this kind of smells like chloroform'! Not suitable for children under 18, please ask your flight attendant for more safety information.", price: 100 }
  ]

  products.each do |product|
    create_product = Product.create(product)
  end


  10.times do |index|
    Quote.create!(quote: Faker::TheFreshPrinceOfBelAir.quote)
  end

p "Created #{Quote.count} quotes"
p "Created #{Product.count} products"
