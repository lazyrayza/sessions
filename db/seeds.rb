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
    expertise: Faker::Esport.game,
    price: rand(0..100)
    )
end

# 20.times do

#   reviews = Review.create!(
#     description: Faker::Lorem.characters(150),
#     therapist_id: User.all.sample.id
# =======
#     expertise: Faker::Esport.game
# >>>>>>> 7f588c6b3bc44fed98135296fd9a594021e5737c
#     )
# end
