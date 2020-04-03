class MechanicRidesController < ApplicationController

  def create
    mechanic = Mechanic.find(params[:mechanic_id])
    mechanic_ride = MechanicRide.create(mechanic_id: mechanic.id,
                                ride_id: params[:ride_id])

    redirect_to "/mechanics/#{mechanic.id}"
  end

end
