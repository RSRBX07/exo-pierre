# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Game.destroy_all
Game.create [
  {name: "Loto du lundi", description: "Le tirage est 12, 42, 11, 6  et 33", players: 2245985},
  {name: "Loto du mardi", description: "Le tirage est 8, 42, 11, 6  et 33", players: 2885485},
  {name: "Loto du mercredi", description: "Le tirage est 5, 42, 11, 6  et 33", players: 2115985},
  {name: "Loto du jeudi", description: "Le tirage est 12, 2, 11, 26  et 33", players: 2775985},
  {name: "Loto du vendredi", description: "Le tirage est 2, 42, 11, 6  et 33", players: 1245955}
]