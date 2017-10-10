class TripsController < ApplicationController

  def index

  end

  def find_trips
    @trips = Trip.available(current_user.id)
    @trips = Trip.search(params[:trip], current_user.id) if params && params[:trip]
  end
end
