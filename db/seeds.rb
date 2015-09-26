
    kate = User.create
    kate.email = Faker::Internet.free_email
    kate.password = Faker::Internet.password
    kate.save

    brekka = User.create
    brekka.email = Faker::Internet.free_email
    brekka.password = Faker::Internet.password
    brekka.save

    moodi = User.create
    moodi.email = Faker::Internet.free_email
    moodi.password = Faker::Internet.password
    moodi.save

    sentinel = User.create
    sentinel.email = Faker::Internet.free_email
    sentinel.password = Faker::Internet.password
    sentinel.save

    morgen = User.create
    morgen.email = Faker::Internet.free_email
    morgen.password = Faker::Internet.password
    morgen.save

    sequin = User.create
    sequin.email = Faker::Internet.free_email
    sequin.password = Faker::Internet.password
    sequin.save

#messages
    kate.messages.create msg: Faker::Lorem.sentence(3)
    brekka.messages.create msg: Faker::Lorem.sentence(3)
    moodi.messages.create msg: Faker::Lorem.sentence(3)
    sentinel.messages.create msg: Faker::Lorem.sentence(3)
    morgen.messages.create msg: Faker::Lorem.sentence(3)
    sequin.messages.create msg: Faker::Lorem.sentence(3)
