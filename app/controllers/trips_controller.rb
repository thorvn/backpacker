class TripsController < ApplicationController

  def index

  end

  def find_trips
    @trips = Trip.available
    @trips = Trip.search(@trips, params[:trip]) if params && params[:trip]
  end
end
