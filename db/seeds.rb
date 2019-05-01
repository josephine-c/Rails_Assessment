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
        size: "sml, med, lrg",
        description: Faker::Food.description,
        price: rand(100..10000)
    )
end