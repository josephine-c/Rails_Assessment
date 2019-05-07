# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


for i in 1..30
    # Seeding for shop table and each shops contact details on the contact table.
    shop = Shop.create(
        name: Faker::Company.name,
        description: Faker::Company.bs
    )

    shop.contact = Contact.create(
        address: Faker::Address.full_address + ", " + Faker::Address.country,
        fax: Faker::PhoneNumber.phone_number,
        phone: Faker::PhoneNumber.phone_number,
        email: "examplecompanyemail@example.com"
    )
    ####
    # Seeding for Users table and each users contact info.
    user = User.create(
        email: "bryce.harlum" + i.to_s + "@gmail.com",
        password: 'valid_password',
        password_confirmation: 'valid_password'
    )

    cart = Cart.create(user_id: user.id)
    

    user.contact = Contact.create(
        address: Faker::Address.full_address + ", " + Faker::Address.country,
        fax: Faker::PhoneNumber.phone_number,
        phone: Faker::PhoneNumber.phone_number,
        email: user.email
    )
    ####
end

# Seeds for products
for i in 1..100
    item = Product.create(
        shop_id: rand(1..30),
        name: Faker::Food.dish,
        stock: rand(0..10),
        size: rand(0..5),
        description: Faker::Food.description,
        price: rand(100..10000)
    )
    listing = Listing.create(
        user_id: rand(1..User.last.id),
        shop_id: rand(1..Shop.last.id),
        status: rand(1..4),  #0 is pending but a That is only for shopping carts
        total: rand(1200..4000)
    )
end

Listing.all.each do |ele|
    for i in 1..20
        link = ListingsProduct.create(
            listing_id: ele.id,
            product_id: rand(1..Product.last.id),
            quantity: rand(1..5)
        )
    end
end


