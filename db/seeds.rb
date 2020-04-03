# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

bob = Mechanic.create(name: "Bob Jones",
                      years_of_experience: 8)

jill = Mechanic.create(name: "Jill Adams",
                      years_of_experience: 15)

kings_island = AmusementPark.create(name: "Kings Island",
                                    admission_price: "$60.00")
                                    
beast = kings_island.rides.create(name: "Beast",
                            thrill_rating: 8)

viper = kings_island.rides.create(name: "Viper",
                                  thrill_rating: 7)

racer = kings_island.rides.create(name: "Dueling Racers",
                                  thrill_rating: 4)
