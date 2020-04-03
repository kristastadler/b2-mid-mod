require 'rails_helper'

RSpec.describe Ride, type: :model do
  describe "relationships" do
    it {should belong_to :amusement_park}
    it {should have_many :mechanic_rides}
    it {should have_many(:mechanics).through(:mechanic_rides)}
  end

  describe 'class methods' do
    it '.alphabetize' do

    kings_island = AmusementPark.create(name: "Kings Island",
                                        admission_price: "$60.00")

    beast = kings_island.rides.create(name: "Beast",
                                thrill_rating: 8)

    viper = kings_island.rides.create(name: "Viper",
                                      thrill_rating: 7)

    racer = kings_island.rides.create(name: "Dueling Racers",
                                      thrill_rating: 4)

    expect(Ride.alphabetize).to eq([beast, racer, viper])
    end
  end

  it '.average_thrill_rating' do
    kings_island = AmusementPark.create(name: "Kings Island",
                                        admission_price: "$60.00")

    beast = kings_island.rides.create(name: "Beast",
                                thrill_rating: 8)

    viper = kings_island.rides.create(name: "Viper",
                                      thrill_rating: 7)

    racer = kings_island.rides.create(name: "Dueling Racers",
                                      thrill_rating: 4)

    expect(Ride.average_thrill_rating).to eq(6.3)
  end
end
