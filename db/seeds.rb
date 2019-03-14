
puts "destroying users"
Review.destroy_all
ChatRoom.destroy_all
Booking.destroy_all
User.destroy_all
puts "destroyed users"
puts "destroying reviews"
puts "destroyed reviews"
puts "Starting seed"

puts "making languages"

english = Language.create!(
  language_name: "English",
  )


puts "done english"

french = Language.create!(
  language_name: "French",
  )


puts "done french"
spanish = Language.create!(
  language_name: "Spanish",
  )



puts "done spanish"
swahili = Language.create!(
  language_name: "Swahili",
  )



puts "done swahili"
creole = Language.create!(
  language_name: "Creole",
  )

puts "done creole"


puts "done languages"



20.times do
  therapists = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: Faker::Address.state,
    phone_number: Faker::PhoneNumber.cell_phone_with_country_code,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    therapist: true,
    expertise: Faker::Esport.game,
    price: 100
    )
end



puts "done main users"


julia = User.create!(
  first_name: "Julia",
    last_name: "Stone",
    address: "Camden, London",
    phone_number: Faker::PhoneNumber.cell_phone_with_country_code,
    email: "juliaaa@stonetherapy.com",
    password: "123456",
    therapist: true,
    expertise: "Psycho-therapy",
    languages:
    bio: Faker::Lorem.paragraph,
    price: 300
  )





puts "done julia"



mario = User.create!(
  first_name: "Mario",
    last_name: "Vespachy",
    address: "South Kensington, London",
    phone_number: Faker::PhoneNumber.cell_phone_with_country_code,
    email: "mariooo@vtherapy.com",
    password: "123456",
    therapist: true,
    expertise: "Calming-therapy, Marriage Counselling",
    bio: Faker::Lorem.paragraph,
    price: 80
  )



puts "done languages"

puts "done mario"


brian = User.create!(
  first_name: "Brian",
    last_name: "Delaweo",
    address: "South Kensington, London",
    phone_number: Faker::PhoneNumber.cell_phone_with_country_code,
    email: "briannn@getbetter.com",
    password: "123456",
    therapist: true,
    expertise: "Calming-therapy, Depression Counselling, Group-therapy",
    bio: Faker::Lorem.paragraph,
    price: 110
  )


puts "done brian"


john = User.create!(
  first_name: "Johnathan",
    last_name: "Olujemba",
    address: "Croydon, London",
    phone_number: Faker::PhoneNumber.cell_phone_with_country_code,
    email: "johnnn@gOlutherapy.com",
    password: "123456",
    therapist: true,
    expertise: "Depression Counselling",
    bio: Faker::Lorem.paragraph,
    price: 140
  )



puts "finished john"
