# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(
    name: "User One",
    username: "user1",
    email: "user1@email.com"
)

User.create(
    name: "User Two",
    username: "user2",
    email: "user2@email.com"
)

User.create(
    name: "User Three",
    username: "user3",
    email: "user3@email.com"
)

Category.create(name: "Trucks")
Category.create(name: "Sedan")
Category.create(name: "SUV")
Category.create(name: "Van")

Car.create(
    name: 'Toyota Corrolla',
    category_id: 2,
    description: 'Nice small car',
    finance_fee: 800.0,
    purchase_fee: 1200.0,
    amount_payable: 1000.0,
    start_date: "2021-12-1",
    end_date: "2021-12-30"
)

Car.create(
    name: 'Toyota Prado',
    category_id: 3,
    description: 'Nice big car',
    finance_fee: 800.0,
    purchase_fee: 1200.0,
    amount_payable: 1000.0,
    start_date: "2021-12-1",
    end_date: "2021-12-30"
)


Reservation.create(
    user_id: 1,
    car_id: 1,
    start_date: "2021-12-5",
    end_date: "2021-12-10"
)