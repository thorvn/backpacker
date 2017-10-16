class TripsController < ApplicationController

  def index

  end

  def find_trips
    @trips = Trip.available
    trips = Trip.search(params[:trip].reject{|_, v| v.blank?}) if params[:trip]
    if trips && trips.any?
      @trips = trips
    else
      flash.now[:alert] = "There are no results for your search"
      render 'find_trips'
    end
  end
end
