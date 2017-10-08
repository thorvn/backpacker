class TripsController < ApplicationController

  def index

  end

  def available_trips
    trips = Trip.available_trips
    trips = trips.pricing(trip_params[:price])
    trips = trips.range_of_time(trip_params[:start_date], trip_params[:end_date])
    trips = trips.members(trip_params[:number_of_member])

    render json: trips
  end

  private

  def trip_params

  end

end
