class AmusementPark < ApplicationRecord
  validates_presence_of :name, :admission_price
  
end
