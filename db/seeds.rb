    kate = User.create
    kate.email = Faker::Internet.free_email
    kate.password = Faker::Internet.password
    kate.avatar = Faker::Avatar.image
    kate.save

    brekka = User.create
    brekka.email = Faker::Internet.free_email
    brekka.password = Faker::Internet.password
    brekka.avatar = Faker::Avatar.image
    brekka.save

    moodi = User.create
    moodi.email = Faker::Internet.free_email
    moodi.password = Faker::Internet.password
    moodi.avatar = Faker::Avatar.image
    moodi.save

    sentinel = User.create
    sentinel.email = Faker::Internet.free_email
    sentinel.password = Faker::Internet.password
    sentinel.avatar = Faker::Avatar.image
    sentinel.save

    morgen = User.create
    morgen.email = Faker::Internet.free_email
    morgen.password = Faker::Internet.password
    morgen.avatar = Faker::Avatar.image
    morgen.save

    sequin = User.create
    sequin.email = Faker::Internet.free_email
    sequin.password = Faker::Internet.password
    sequin.avatar = Faker::Avatar.image
    sequin.save

    matt = User.create
    matt.email = "matt@gmail.com"
    matt.password = "123"
    matt.avatar = Faker::Avatar.image
    matt.save

#messages
    kate.messages.create msg: Faker::Lorem.sentence(3)
    kate.messages.create msg: Faker::Lorem.sentence(3)
    kate.messages.create msg: Faker::Lorem.sentence(3)
    kate.messages.create msg: Faker::Lorem.sentence(3)
    brekka.messages.create msg: Faker::Lorem.sentence(3)
    brekka.messages.create msg: Faker::Lorem.sentence(3)
    brekka.messages.create msg: Faker::Lorem.sentence(3)
    brekka.messages.create msg: Faker::Lorem.sentence(3)
    moodi.messages.create msg: Faker::Lorem.sentence(3)
    moodi.messages.create msg: Faker::Lorem.sentence(3)
    moodi.messages.create msg: Faker::Lorem.sentence(3)
    moodi.messages.create msg: Faker::Lorem.sentence(3)
    moodi.messages.create msg: Faker::Lorem.sentence(3)
    moodi.messages.create msg: Faker::Lorem.sentence(3)
    sentinel.messages.create msg: Faker::Lorem.sentence(3)
    moodi.messages.create msg: Faker::Lorem.sentence(3)
    moodi.messages.create msg: Faker::Lorem.sentence(3)
    moodi.messages.create msg: Faker::Lorem.sentence(3)
    morgen.messages.create msg: Faker::Lorem.sentence(3)
    morgen.messages.create msg: Faker::Lorem.sentence(3)
    morgen.messages.create msg: Faker::Lorem.sentence(3)
    morgen.messages.create msg: Faker::Lorem.sentence(3)
    sequin.messages.create msg: Faker::Lorem.sentence(3)
    sequin.messages.create msg: Faker::Lorem.sentence(3)
    sequin.messages.create msg: Faker::Lorem.sentence(3)
    matt.messages.create msg: "hi everybody"
    matt.messages.create msg: Faker::Lorem.sentence(8)
    matt.messages.create msg: Faker::Lorem.sentence(8)
    matt.messages.create msg: Faker::Lorem.sentence(8)
