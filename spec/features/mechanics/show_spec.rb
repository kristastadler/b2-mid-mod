require 'rails_helper'

RSpec.describe "As a visitor, when I visit a mechanics show page" do
  it "I see their name, years of experience, and names of all rides they're working on and can add a ride to their workload" do

    kings_island = AmusementPark.create(name: "Kings Island",
                                        admission_price: "$60.00")

    beast = kings_island.rides.create(name: "Beast",
                                thrill_rating: 8)

    viper = kings_island.rides.create(name: "Viper",
                                      thrill_rating: 7)

    racer = kings_island.rides.create(name: "Dueling Racers",
                                      thrill_rating: 4)
    bob = Mechanic.create(name: "Bob Jones",
                          years_of_experience: 8)
    beast_ride = MechanicRide.create(mechanic_id: bob.id,
                                ride_id: beast.id)
    racer_ride = MechanicRide.create(mechanic_id: bob.id,
                                ride_id: racer.id)


    visit "/mechanics/#{bob.id}"

    expect(page).to have_content("Mechanic: #{bob.name}")
    expect(page).to have_content("Years of Experience: #{bob.years_of_experience}")

    expect(page).to have_content("Current Rides They're Working On:")
    expect(page).to have_content(beast.name)
    expect(page).to have_content(racer.name)
    expect(page).to_not have_content(viper.name)
    expect(page).to have_content("Add a ride to workload:")

    fill_in :ride_id, with: viper.id

    click_on "Submit"

    expect(current_path).to eq("/mechanics/#{bob.id}")
    expect(page).to have_content(viper.name)
  end 
  end
