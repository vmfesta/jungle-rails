# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Seeding Data ..."

# Helper functions
def open_asset(file_name)
  File.open(Rails.root.join('db', 'seed_assets', file_name))
end

# Only run on development (local) instances not on production, etc.
unless Rails.env.development?
  puts "Development seeds only (for now)!"
  exit 0
end

# Let's do this ...

## CATEGORIES

puts "Finding or Creating Categories ..."

cat1 = Category.find_or_create_by! name: 'Apparel'
cat2 = Category.find_or_create_by! name: 'Electronics'
cat3 = Category.find_or_create_by! name: 'Furniture'

## PRODUCTS

puts "Re-creating Products ..."

Product.destroy_all

cat1.products.create!({
  id: 1,
  name:  'Men\'s Classy shirt',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('apparel1.jpg'),
  quantity: 10,
  price: 64.99
})

cat1.products.create!({
  id: 2,
  name:  'Women\'s Zebra pants',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('apparel2.jpg'),
  quantity: 18,
  price: 124.99
})

cat1.products.create!({
  id: 3,
  name:  'Hipster Hat',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('apparel3.jpg'),
  quantity: 4,
  price: 34.49
})

cat1.products.create!({
  id: 4,
  name:  'Hipster Socks',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('apparel4.jpg'),
  quantity: 8,
  price: 25.00
})

cat1.products.create!({
  id: 5,
  name:  'Russian Spy Shoes',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('apparel5.jpg'),
  quantity: 8,
  price: 1_225.00
})

cat1.products.create!({
  id: 6,
  name:  'Human Feet Shoes',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('apparel6.jpg'),
  quantity: 82,
  price: 224.50
})


cat2.products.create!({
  id: 7,
  name:  'Modern Skateboards',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('electronics1.jpg'),
  quantity: 40,
  price: 164.49
})

cat2.products.create!({
  id: 8,
  name:  'Hotdog Slicer',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('electronics2.jpg'),
  quantity: 3,
  price: 26.00
})

cat2.products.create!({
  id: 9,
  name:  'World\'s Largest Smartwatch',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('electronics3.jpg'),
  quantity: 32,
  price: 2_026.29
})

cat3.products.create!({
  id: 10,
  name:  'Optimal Sleeping Bed',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('furniture1.jpg'),
  quantity: 320,
  price: 3_052.00
})

cat3.products.create!({
  id: 11,
  name:  'Electric Chair',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('furniture2.jpg'),
  quantity: 2,
  price: 987.65
})

cat3.products.create!({
  id: 12,
  name:  'Red Bookshelf',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('furniture3.jpg'),
  quantity: 23,
  price: 2_483.75
})


#User
user = User.new(name:'Victor', email:'vmfesta@gmail.com', password:'123456')
user.save


#RATING

# prod1 = Product.find(1);
# prod2 = Product.find(2);
# prod3 = Product.find(3);
# prod4 = Product.find(4);
# prod5 = Product.find(5);
# prod6 = Product.find(6);
# prod7 = Product.find(7);
# prod8 = Product.find(8);
# prod9 = Product.find(9);
# prod10 = Product.find(10);
# prod11 = Product.find(11);
# prod12 = Product.find(12);

Rating.create!({
    product_id: 1,
    user_id: 1,
    description: 'Test description',
    rating: 4
})

Rating.create!({
     product_id:2,
     user_id: 1,
     description: 'Test description',
     rating: 2
})

Rating.create!({
     product_id:3,
     user_id: 1,
     description: 'Test description',
     rating: 5
})

Rating.create!({
      product_id:4,
      user_id: 1,
      description: 'Test description',
      rating: 1
})

Rating.create!({
      product_id:5,
      user_id: 1,
      description: 'Test description',
      rating: 3
})

Rating.create!({
      product_id:6,
      user_id: 1,
      description: 'Test description',
      rating: 3
})

Rating.create!({
      product_id:7,
      user_id: 1,
      description: 'Test description',
      rating: 3
})

Rating.create!({
      product_id:8,
      user_id: 1,
      description: 'Test description',
      rating: 3
})

Rating.create!({
       product_id:9,
       user_id: 1,
       description: 'Test description',
       rating: 3
})

Rating.create!({
      product_id:10,
      user_id: 1,
      description: 'Test description',
      rating: 3
})

Rating.create!({
      product_id:11,
      user_id: 1,
      description: 'Test description',
      rating: 3
})

Rating.create!({
      product_id:12,
      user_id: 1,
      description: 'Test description',
      rating: 3
})

puts "DONE!"
