# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Dog.destroy_all
DogSitter.destroy_all
Stroll.destroy_all
City.destroy_all

require 'faker'
require 'quick_random_records'

puts "Creation de 20 Villes"
20.times do
  city = City.new(city_name: Faker::Nation.capital_city)
  if city.save
    puts "#{city.city_name}"
  end
end

puts "Creation 20 de Chiens"
20.times do
  dog = Dog.new(dog_name: Faker::FunnyName.name, city_id: Faker::Number.between(from: City.all.first.id, to: City.all.last.id))
  if dog.save
    puts "#{dog.dog_name}"
  end
end

puts "Creation de 20 DogSitters"
20.times do
  dog_sitter = DogSitter.new(dogsitter_name: Faker::Name.first_name, city_id: Faker::Number.between(from: City.all.first.id, to: City.all.last.id))
  if dog_sitter.save
    puts "#{dog_sitter.dogsitter_name}"
  end
end

puts "Creation de 10 Strolls"
10.times do
  dog = Dog.find(Faker::Number.between(from: Dog.first.id, to: Dog.last.id))
  city_id = dog.city_id
  if DogSitter.exists?(:city_id => city_id)
    puts "il y a un dogsitter à #{City.find(city_id).city_name}"
    ids = DogSitter.where(:city_id => city_id).pluck(:id)
    ds = DogSitter.find(ids.sample)
    ds_id = ds.id
    stroll = Stroll.new(dog_id_id: dog.id, dog_sitter_id_id: ds_id)
    if stroll.save
        puts "stroll saved"
    end
  end
end

