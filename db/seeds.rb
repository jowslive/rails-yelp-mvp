# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Iniciando...'
5.times do
  faker_name = Faker::Restaurant.name
  faker_address = Faker::Address.street_name
  faker_phone_number = Faker::PhoneNumber.cell_phone_in_e164
  category = %w[chinese italian japanese french belgian].sample
  # Cria um restaurante
  Restaurant.create(name: faker_name, address: faker_address, phone_number: faker_phone_number, category: category)
end
puts 'Finalizando...'
