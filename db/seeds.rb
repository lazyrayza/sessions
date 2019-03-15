puts "destroying users"
Review.destroy_all
ChatRoom.destroy_all
Booking.destroy_all
puts "destroyed users"
puts "destroying reviews"
puts "destroyed reviews"
puts "Starting seed"
puts "making languages"
english = Language.create!(
  language_name: "English",
  )
english = Language.create!(
  language_name: "English",
  )
puts "done english"
french = Language.create!(
  language_name: "French",
  )
puts "done english"
spanish = Language.create!(
  language_name: "Spanish",
  )
puts "done english"
swahili = Language.create!(
  language_name: "Swahili",
  )
puts "done english"
creole = Language.create!(
  language_name: "Creole",
  )
puts "done english"
julia = User.new(
  first_name: "Julia",
    last_name: "Stone",
    address: "15FL West Building, No.668 East BeiJin Rd",
    phone_number: "07483969008",
    email: "juliaa@stonetherapy.com",
    password: "123456",
    therapist: true,
    expertise: "Addictions",
    bio: "Hello, I'm Julia,  a qualified relational
    integrative therapist. This means that the relationship
    between client and therapist lies at the heart of my
    practice. I place huge importance on building a supportive
    and trusting relationship, where I encourage honest and open
    feedback from my clients. I very much view therapy as a
    collaborative process, where both therapist and client contribute.
    As an integrative therapist I am trained in three main therapeutic
    approaches; humanistic, cognitive behavioural and psychodynamic.
    This allows me to adapt my way of working to each client’s
    individual needs.",
    price: 50,
    gender: "female"
  )
julia.remote_photo_url = 'https://res.cloudinary.com/dnqrlagsz/image/upload/v1552644275/girl_4.jpg'
julia.save


puts "done julia"
mario = User.new(
  first_name: "Mario",
    last_name: "Vespachy",
    address: "234 Wellington Street, Ottawa, Ontario, Canada, K1A 0G9",
    phone_number: "07470367654",
    email: "marioo@vtherapy.com",
    password: "123456",
    therapist: true,
    expertise: "Psychodynamic",
    bio: "I'm Mario, a mindfulness-based integrative therapist. That's a
    of a mouthful, what does it mean ? I belive the healing quality of the relationship
    between client and therapist is the essential element for helping you experience a more rich and meaningful
    life. We wil use this to bring awareness to how your mind works and
    the thoughts and feelings you are struggling with. I will help you bring acceptance, allowing
    you to experience parts of yourself in a different way, and w will work together on the change you would like to see.",
    price: 60,
    gender: "male"
  )
mario.remote_photo_url = 'https://res.cloudinary.com/dnqrlagsz/image/upload/v1552644289/boy_2.jpg'
mario.save

puts "done mario"
suze = User.new(
  first_name: "Suze",
    last_name: "Delaweo",
    address: "2 Holt Street, Surry Hills, NSW 2010, Australia",
    phone_number: "07305074943",
    email: "briann@getbetter.com",
    password: "123456",
    therapist: true,
    expertise: "Trauma",
    bio: "Lost ownership of your life? Want to take it back? But dont know
    how to do it? We are not dependent but interdependent. Thus, we often need help from others, and many
    of all our problems are explicit or implicitly relational by nature.
    Yet, being in a professional relationship with a therapist, we can have an insightggul understanding
    of our behavioural patterns, repressed feelings, and automatic negative thoughts.",
    price: 70,
    gender: "female"
  )
suze.remote_photo_url = 'https://res.cloudinary.com/dnqrlagsz/image/upload/v1552644275/girl_3.jpg'
suze.save

puts "done suze"

john = User.new(
  first_name: "Johnathan",
    last_name: "Olujemba",
    address: "87, Washdike Drove, PE20 2QA, Lincolnshire, England",
    phone_number: "07903496992",
    email: "johnn@gOlutherapy.com",
    password: "123456",
    therapist: true,
    expertise: "Existencial",
    bio: "Having started my career in mental health work, I trained as a psychoanalytic and have worked for
    over 25 years in the field. I initially trained at the Tavistock Clinic (London)
    in both the Adult and Child department. Although I trained as a Freudian psychoanalyst, I do not work primarily
    with that model. During my practice I have come to value a range of experince outside that model.",
    price: 50,
    gender: "male"
  )
john.remote_photo_url = 'https://res.cloudinary.com/dnqrlagsz/image/upload/v1552644289/boy_1.jpg'
john.save

puts "finished john"
alex = User.new(
  first_name: "Alex",
    last_name: "Sarvin",
    address: "1, Church Farm Cottages, IP13 9PA, Cransford, Suffolk, England",
    phone_number: "07483368103",
    email: "alexx@stonetherapy.com",
    password: "123456",
    therapist: true,
    expertise: "Eating disorders",
    bio: "I offer a warm and engaging approach to looking at
    how we can best support you in your situation. I will work
    with you to find out what you need to live a more fulfilling
    ife-how you can help make change and how to cope with the really
    difficult things that are out of your control.",
    price: 65,
    gender: "female"
  )
alex.remote_photo_url = 'https://res.cloudinary.com/dnqrlagsz/image/upload/v1552645710/adult-beach-beard-736716.jpg'
alex.save

puts "done alex"
andrew = User.new(
  first_name: "Andrew",
    last_name: "Littlehorn",
    address: "86, Broomhall Road, EH12 7PW, Edinburgh, Scotland",
    phone_number: "07910394223",
    email: "andreww@stonetherapy.com",
    password: "123456",
    therapist: true,
    expertise: "Obessions",
    bio: "You may be considering therapy because of a specific
    problem or crisis in your life. You may be having difficulties
    n a relationship, or in your work or studies; you may be feeling
    anxious or depressed; or you may have a more general feeling of
    stuckness, unease or dissatisfaction.  This may make it hard for
    you to see a happy and fruitful future for yourself. Therapy gives
    you the opportunity to explore this with me, at your own pace, in a
    safe setting.",
    price: 80,
    gender: "male"
  )
andrew.remote_photo_url = 'https://res.cloudinary.com/dnqrlagsz/image/upload/v1552644290/boy_3.jpg'
andrew.save

puts "done andrew"
kirk = User.new(
  first_name: "Kirk",
    last_name: "Nelson",
    address: "28 Sydenham Hill, se26 6tp, London, England",
    phone_number: "07930033741",
    email: "kirkk@stonetherapy.com",
    password: "123456",
    therapist: true,
    expertise: "Stress",
    bio: "As an integrative counsellor I am able to draw on knowledge
    and skills from various counselling approaches based on your
    individual circumstances in order to provide the most effective
    and personalised therapy for your needs.",
    price: 55,
    gender: "male"
  )
kirk.remote_photo_url = 'https://res.cloudinary.com/dnqrlagsz/image/upload/v1552644290/boy_5.jpg'
kirk.save

puts "done ricardo"
joel = User.new(
  first_name: "Ricardo",
    last_name: "Vieira",
    address: "Av. Santa Maria 11A, 2735-996 Agualva-Cacém, Portugal",
    phone_number: "07980369004",
    email: "ricardo@sessionstherapy.com",
    password: "123456",
    therapist: true,
    expertise: "Anxiety",
    bio: "My name is Ricardo Vieira. I am a CBT Qualified Counsellor &
    Supervisor with over a decade of experience of offering
    counselling services to individuals and groups, of adults
    and young people aged 16+, in my Private Practice located in
    Cacem, Portugal. I’m a registered BACP member.
    The BACP Register is accredited by the Professional Standards
    Authority for Health and Social Care, an independent regulatory
    body accountable to parliament.",
    price: 50,
    gender: "male"
  )
joel.remote_photo_url = 'https://res.cloudinary.com/dnqrlagsz/image/upload/v1552644875/ricardo.jpg'
joel.save

puts "done ricardo"
leticia = User.new(
  first_name: "Leticia",
    last_name: "Valles",
    address: "376 London Rd, Leicester, LE2 2PN ",
    phone_number: "07636807008",
    email: "leticiaa@stonetherapy.com",
    password: "123456",
    therapist: true,
    expertise: "Sexuality",
    bio: "I work in English and Spanish with individuals -
    adults, children and adolescents - as well as couples.
    Short walking distance from Charing Cross, Leicester Sq or
    Covent Garden stations. My aim is helping people developing a
    better relationship with themselves through finding more
    acceptance of who they are, so they can feel freer and more at
    ease with the inevitable difficulties of life. If we find a way
    to turn perceived shortcomings into resources then self-esteem
    doesn't need to be dragging us down and making us feel doomed.
    My orientation is Integrative and Relational and as well as mind
    and emotions, my work can involve the body.",
    price: 50,
    gender: "female"
  )
leticia.remote_photo_url = 'https://res.cloudinary.com/dnqrlagsz/image/upload/v1552644275/girl_2.jpg'
leticia.save

puts "done leticia"
anna = User.new(
  first_name: "Anna",
    last_name: "Sinksi",
    address: "Unit 4, Old School Workshops, London Road, Holyhead, LL65 3TL",
    phone_number: "07094586590",
    email: "annaa@stonetherapy.com",
    password: "123456",
    therapist: true,
    expertise: "CBT",
    bio: "I'm a qualified integrative psychotherapist (Master's level)
    with 3 different locations in central London. I work using a range of approaches
    from different schools of psychotherapy, as I believe everything depends on the given individual.
    My experience includes a wide range of clients, including bereavement,
    epression, anxiety, major life changes, divorce, infertility and miscarriage.
    I am also a member of BICA: British Infertility Counselling Association.",
    price: 60,
    gender: "female"
  )
anna.remote_photo_url = 'https://res.cloudinary.com/dnqrlagsz/image/upload/v1552645709/attractive-beautiful-beauty-764529.jpg'
anna.save
puts "done anna"




raza = User.new(
  first_name: "Raza",
    last_name: "Pirbhai",
    address: "Unit 4, Old School Workshops, London Road, Holyhead, LL65 3TL",
    phone_number: "0762735652",
    email: "raza@lewagon.com",
    password: "123456",
    therapist: false,
    gender: "male"
  )
raza.remote_photo_url = 'https://res.cloudinary.com/dnqrlagsz/image/upload/v1552645883/raz.jpg'
raza.save

