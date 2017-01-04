# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: "root@root.fr", password: "rootroot", password_confirmation: "rootroot")
City.create(name: "Bordeaux", description: "Bordeaux est une commune du Sud-Ouest de la France, préfecture du département de la Gironde et chef-lieu de la région Nouvelle-Aquitaine. Capitale de l'ancienne Guyenne, Bordeaux, située en bordure des Landes de Gascogne, fait partie de la Gascogne.", image: "https://s3.eu-central-1.amazonaws.com/tradfoood/cities/images/000/000/001/medium/patrimoine_03_1.jpg", status: 2)
City.create(name: "Paris", description: "Paris est la capitale de la France. Elle se situe au cœur d'un vaste bassin sédimentaire aux sols fertiles et au climat tempéré, le bassin parisien, sur une boucle de la Seine, entre les confluents de celle-ci avec la Marne et l'Oise.", image: "https://s3.eu-central-1.amazonaws.com/tradfoood/cities/images/000/000/004/medium/paris-immobilier-2_4861939_whcoug.jpg", status: 2)
City.create(name: "Londres", description: "Londres, située dans le Sud-Est de la Grande-Bretagne, est la capitale et la plus grande ville du Royaume-Uni ; longtemps capitale de l'Empire britannique, elle est désormais le siège du Commonwealth.", image: "https://s3.eu-central-1.amazonaws.com/tradfoood/cities/images/000/000/002/medium/MdaQUkAGr9fvq2k2kg6EyQY4XY8.jpg", status: 2)
City.create(name: "New York", description: "New York, officiellement nommée City of New York, connue également sous les noms et abréviations de New York City ou NYC, est la plus grande ville des États-Unis en termes d'habitants et l'une des plus importantes du continent américain.", image: "https://s3.eu-central-1.amazonaws.com/tradfoood/cities/images/000/000/005/medium/Voyage-new-york-compressor.jpg", status: 2)
City.create(name: "Tokyo", description: "Tokyo, anciennement Edo, officiellement la préfecture métropolitaine de Tokyo, est la capitale du Japon.", image: "https://s3.eu-central-1.amazonaws.com/tradfoood/cities/images/000/000/003/medium/tokyo-mud-bath-bar-mudbath0716.jpg", status: 1)
