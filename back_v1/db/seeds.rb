# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: "root@root.fr", password: "rootroot", password_confirmation: "rootroot")
City.create(name: "Bordeaux", description: "Bordeaux est une commune du Sud-Ouest de la France, préfecture du département de la Gironde et chef-lieu de la région Nouvelle-Aquitaine. Capitale de l'ancienne Guyenne, Bordeaux, située en bordure des Landes de Gascogne, fait partie de la Gascogne.", image: "https://s3.eu-central-1.amazonaws.com/tradfood/cities/images/000/000/001/medium/patrimoine_03_1.jpg", status: 0)
