require 'rails_helper'

RSpec.describe "As a visitor, when I visit an amusement parks show page" do
  it "I see the name and price of admissions for that amusement park" do

  kings_island = AmusementPark.create(name: "Kings Island",
                                      admission_price: "$60.00")

  visit "/amusement-parks/#{kings_island.id}"

  expect(page).to have_content(kings_island.name)
  expect(page).to have_content("Admissions: #{kings_island.admission_price}")

  end

  it "I see the names of all the rides that are at that theme park listed in alphabetical order" do

  kings_island = AmusementPark.create(name: "Kings Island",
                                      admission_price: "$60.00")

  beast = kings_island.rides.create(name: "Beast",
                              thrill_rating: 8)

  viper = kings_island.rides.create(name: "Viper",
                                    thrill_rating: 7)

  racer = kings_island.rides.create(name: "Dueling Racers",
                                    thrill_rating: 4)

  visit "/amusement-parks/#{kings_island.id}"

  expect(page).to have_content("Rides:")
  expect(page).to have_content("1. #{beast.name}")
  expect(page).to have_content("2. #{racer.name}")
  expect(page).to have_content("3. #{viper.name}")
  end
end


# And I see the names of all the rides that are at that theme park listed in alphabetical order
# And I see the average thrill rating of this amusement park’s rides
#
#     Rides:
#            1. Lightning Racer
#            2. Storm Runner
#            3. The Great Bear
#
#     Average Thrill Rating of Rides: 7.8/10
