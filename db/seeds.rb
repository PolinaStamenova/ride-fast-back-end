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

Car.create(
    name: 'Honda Civic',
    description: 'Nice small car',
    price: 800,
    image: "https://static.fzinternal.com/common/mfg/Honda/2016-honda-civic.png",
    duration: 12,
    number_of_seats: 10
)

Car.create(
    name: 'Toyota Prado',
    description: 'Nice big car',
    price: 800,
    image: "https://static.fzinternal.com/common/mfg/Honda/2016-honda-civic.png",
    duration: 12,
    number_of_seats: 10
)

Car.create(
    name: 'Mazda CX6',
    description: 'Nice big car',
    price: 800,
    image: "https://static.fzinternal.com/common/mfg/Honda/2016-honda-civic.png",
    duration: 12,
    number_of_seats: 10
)

Car.create(
    name: 'Range Rover',
    description: 'Nice big car',
    price: 800,
    image: "https://static.fzinternal.com/common/mfg/Honda/2016-honda-civic.png",
    duration: 12,
    number_of_seats: 10
)

Car.create(
    name: 'Mitsubishi Lancer',
    description: 'Nice big car',
    price: 800,
    image: "https://static.fzinternal.com/common/mfg/Honda/2016-honda-civic.png",
    duration: 12,
    number_of_seats: 10
)

Car.create(
    name: 'Toyota Mark X',
    description: 'Nice big car',
    price: 800,
    image: "https://static.fzinternal.com/common/mfg/Honda/2016-honda-civic.png",
    duration: 12,
    number_of_seats: 10
)

10.times do 
    City.create(name:Faker::Address.city)
end

Reservation.create(
    user_id: 1,
    car_id: 1,
    city_id: 1,
    start_date: "2021-12-5",
    end_date: "2021-12-10"
)

Reservation.create(
    user_id: 2,
    car_id: 2,
    city_id: 2,
    start_date: "2021-12-5",
    end_date: "2021-12-10"
)

Reservation.create(
    user_id: 1,
    car_id: 1,
    city_id: 4,
    start_date: "2021-12-5",
    end_date: "2021-12-10"

)