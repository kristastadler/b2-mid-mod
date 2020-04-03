class Ride < ApplicationRecord
  validates_presence_of :name, :thrill_rating

  belongs_to :amusement_park

  def self.alphabetize
    Ride.order(:name)
  end

end
