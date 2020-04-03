class Ride < ApplicationRecord
  validates_presence_of :name, :thrill_rating

  belongs_to :amusement_park
  has_many :mechanic_rides
  has_many :mechanics, through: :mechanic_rides

  def self.alphabetize
    Ride.order(:name)
  end

  def self.average_thrill_rating
  average_thrill_rating = Ride.sum(:thrill_rating).to_f / Ride.count(:thrill_rating)
  average_thrill_rating.round(1)
  end

end
