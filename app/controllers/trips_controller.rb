class TripsController < ApplicationController

  def index

  end

  def find_trips
    @trips = Trip.available
  end

  def search
    @trips = Trip.available.search(params[:trip]) if params[:trip]
    if @trips.empty?
      flash.now[:alert] = "There are no results for your search"
    end
    render 'find_trips'
  end

end
