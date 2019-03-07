require "faker"

Review.destroy_all
User.destroy_all

20.times do

  therapists = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: Faker::Address.state,
    phone_number: Faker::PhoneNumber.cell_phone_with_country_code,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    therapist: true,
    languages: Faker::ProgrammingLanguage.name,
    expertise: Faker::Esport.game
    )
end

20.times do

  reviews = Review.create!(
    description: Faker::Lorem.characters(150),
    therapist_id: User.all.sample.id
    )
end

# 3.times do

#   bookings = Booking.create!(
#     booking_id: Faker::Lorem.characters(2),
#     user_id: Faker::Lorem.characters(1)
#     )
# end


5.times do
  therapies = Therapy.create!(
    name: Faker::Lorem.characters(5)
    )
end

