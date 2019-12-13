# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


dog = Dog.new(name: "Cooper", color: "black", breed:"German Shorthaired Pointer", age: 4, weight: 60, behavior_traits: "friendly", bio: "started from the bottom, now I'm here. (former street dog)", image_url: "CooperPooper", latitude: 65, longitude: 54, user_id: 1)


dog = Dog.new(name: "Riley", color: "black", breed:"Black Lab", age: 5, weight: 80, behavior_traits: "hungry", bio: "started on a farm, now I'm here.", image_url: "RileyPiley", latitude: 35, longitude: 24, user_id: 2)

dog = Dog.new(name: "Delli", color: "brown", breed:"Chocolate Lab", age: 4, weight: 60, behavior_traits: "energetic", bio: "a dog of the people", image_url: "ghiradellis_chocolate", latitude: 76, longitude: 21, user_id: 3)

dog = Dog.new(name: "Apollo", color: "grey", breed:"Great Dane", age: 2, weight: 73, behavior_traits: "towering", bio: "puppy in a the body of a giant", image_url: "CooperPooper", latitude: 65, longitude: 54, user_id: 2)

dog = Dog.new(name: "Clifford", color: "black", breed:"German Sheppard", age: 2, weight: 55, behavior_traits: "aggressive", bio: "training for dog fight club", image_url: "angry_dog", latitude: 43, longitude: 32, user_id: 5)

user = User.new(first_name: "Kichelle", last_name: "Mara", email: "kichelle@mara.com", password: "password", phone_number: 54434573623, home_address: "oogly boogly street")