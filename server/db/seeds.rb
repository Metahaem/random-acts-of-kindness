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
  {content: "Pet a puppy", user_id: 1, category_id: 1, image_url: "http://gph.is/1fg8eOM"},
  {content: "Pick up some litter", user_id: 2, category_id: 2, image_url: "https://gph.is/2GKJihr"},
  {content: "Donate to a local charity", user_id: 1, category_id: 4, image_url: "https://gph.is/2behKo2"},
  {content: "Buy a hot meal for a homeless person", user_id: 2, category_id: 4, image_url: "https://gph.is/2R6uG5Y"},
  {content: "Volunteer at an animal shelter", user_id: 1, category_id: 1, image_url: "https://gph.is/2ot44sF"},
  {content: "Cook/bake something for your neighbour", user_id: 2, category_id: 3, image_url: "https://gph.is/2vzSnXT"},
  {content: "Send a nice message to someone you care about", user_id: 2, category_id: 3, image_url: "https://gph.is/2oZE9yd"},
  {content: "Compliment someone", user_id: 1, category_id: 3, image_url: "https://gph.is/2mUvlpi"},
  {content: "Invite a co-worker to lunch", user_id: 2, category_id: 5, image_url: "https://gph.is/1nRq4ci"},
  {content: "Plant a tree", user_id: 1, category_id: 2, image_url: "https://gph.is/2bbWfBb"}
]



acts.each {|act| Act.create!(act)}


0
