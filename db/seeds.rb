# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

50.times do
    user = User.create(
      name: Faker::Zelda.name, description: Faker::Lorem.sentence
    )
    5.times {
      Post.create(
        title: Faker::Zelda.title,
        comment: Faker::User.comment,
        user_id: user.id
      )
    }
  end
