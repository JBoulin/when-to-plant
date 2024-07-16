# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.destroy_all

User.create!(
  nom: "whentoplant",
  prenom: "jeremy",
  email: "test1@test.fr",
  password: "test123",
  role: "user"
)

User.create!(
  nom: "Boulin",
  prenom: "Jeremy",
  email: "jeremy@test.fr",
  password: "123456",
  role: "user"
)

User.create!(
  nom: "Gambotti",
  prenom: "Gabriel",
  email: "gabriel@test.fr",
  password: "123456",
  role: "user"
)

User.create!(
  nom: "Smolyakova",
  prenom: "Olena",
  email: "olena@test.fr",
  password: "123456",
  role: "user"
)

User.create!(
  nom: "Cano",
  prenom: "Louis",
  email: "louis@test.fr",
  password: "123456",
  role: "user"
)

User.create!(
  nom: "Norris",
  prenom: "Chuck",
  email: "admin@test.fr",
  password: "123456",
  role: "admin"
)
