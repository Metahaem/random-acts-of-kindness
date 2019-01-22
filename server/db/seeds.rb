# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Act.destroy_all
User.destroy_all
Category.destroy_all


users = [{name: "Janine"}, {name: "Tom"}]

users.each {|user| User.create!(user)}

categories = [
  {name: "Animals"},
  {name: "Environment"},
  {name: "Family/Friends"},
  {name: "Charity"},
  {name: "At Work"},
  ]

categories.each {|category| Category.create!(category)}

acts = [
  {content: "Pet a puppy", user_id: 1, category_id: 1, image_url: "https://media.giphy.com/media/qPuhFBQt8xLEY/giphy.gif"},
  {content: "Pick up some litter", user_id: 2, category_id: 2, image_url: "https://media.giphy.com/media/1YctWh7oIsZPkTXMw2/giphy.gif"},
  {content: "Donate to a local charity", user_id: 1, category_id: 4, image_url: "https://media.giphy.com/media/3o6Zt3OhbsQ5VLPmBW/giphy.gif"},
  {content: "Buy a hot meal for a homeless person", user_id: 2, category_id: 4, image_url: "https://media.giphy.com/media/5S4CcNKWy7a28XDWyF/giphy.gif"},
  {content: "Volunteer at an animal shelter", user_id: 1, category_id: 1, image_url: "https://media.giphy.com/media/3o7bueStqEca4YftOE/giphy.gif"},
  {content: "Cook/bake something for your neighbour", user_id: 2, category_id: 3, image_url: "https://media.giphy.com/media/Y09s2Frxp7wpBGXTyt/giphy.gif"},
  {content: "Send a nice message to someone you care about", user_id: 2, category_id: 3, image_url: "https://media.giphy.com/media/Vj02LjCFMdk0U/giphy.gif"},
  {content: "Compliment someone", user_id: 1, category_id: 3, image_url: "https://media.giphy.com/media/3o751Sq3f0eeLjQB0Y/giphy.gif"},
  {content: "Invite a co-worker to lunch", user_id: 2, category_id: 5, image_url: "https://media.giphy.com/media/yxVRIRF0WJUkBckw8g/giphy.gif"},
  {content: "Plant a tree", user_id: 1, category_id: 2, image_url: "https://media.giphy.com/media/3o7TKp3cFUIxiCW8KI/giphy.gif"}
]



acts.each {|act| Act.create!(act)}


0
