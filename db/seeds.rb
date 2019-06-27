Category.create!(name: "Đồ ăn nhanh")
Category.create!(name: "Đồ nướng")
Category.create!(name: "Piza")

100.times do |n|
  name = Faker::Food.sushi+"#{n}"
  description = Faker::Food.description
  sale_price = 100000 + n*1000
  price = 120000 + n*1000
  sale_count= 100 + n
  quantity = 100
  Product.create!(name: name, description: description, price: price, sale_price: sale_price, sale_count: sale_count, quantity: quantity)
end
