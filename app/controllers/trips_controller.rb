class TripsController < ApplicationController

  def index
    @trips = Trip.all
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = current_user.trips.create(trip_params)
    redirect_to root_path
  end

  private

  def trip_params
    params.require(:trip).permit(:title, :body, :price, :start_date,
                                 :end_date, :number_of_member, :image)
  end
end
