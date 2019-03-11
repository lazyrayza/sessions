puts "destroying users"
Review.destroy_all
ChatRoom.destroy_all
Booking.destroy_all
puts "destroyed users"
puts "destroying reviews"


puts "destroyed reviews"

puts "Starting seed"
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
    expertise: Faker::Esport.game,
    bio: Faker::Hipster.paragraph
        )
end
puts "done main users"

julia = User.create!(
  first_name: "Julia",
    last_name: "Stone",
    address: "Camden, London",
    phone_number: Faker::PhoneNumber.cell_phone_with_country_code,
    email: "julia@stonetherapy.com",
    password: "123456",
    therapist: true,
    languages: "English, French, Spanish",
    expertise: "Psycho-therapy",
    bio: Faker::Lorem.paragraph
  )

puts "done julia"

mario = User.create!(
  first_name: "Mario",
    last_name: "Vespachy",
    address: "South Kensington, London",
    phone_number: Faker::PhoneNumber.cell_phone_with_country_code,
    email: "mario@vtherapy.com",
    password: "123456",
    therapist: true,
    languages: "English, French, Italian",
    expertise: "Calming-therapy, Marriage Counselling",
    bio: Faker::Lorem.paragraph
  )

puts "done mario"

brian = User.create!(
  first_name: "Brian",
    last_name: "Delaweo",
    address: "South Kensington, London",
    phone_number: Faker::PhoneNumber.cell_phone_with_country_code,
    email: "brian@getbetter.com",
    password: "123456",
    therapist: true,
    languages: "English, French, Swahili",
    expertise: "Calming-therapy, Depression Counselling, Group-therapy",
    bio: Faker::Lorem.paragraph
  )


puts "done brian"













