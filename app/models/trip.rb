class Trip < ApplicationRecord

  scope :available, ->(user_id) do
    where("start_date >= ? and user_id is null or user_id != ?", Date.today, user_id)
      .order("created_at DESC")
  end

  def self.search(trip_params, user_id)
    trip_params = trip_params.reject{|_, v| v.blank?}

    trips = Trip.where("user_id is null or user_id != ?", user_id)
    trips = trips.where("price <= ?", trip_params[:price]) if trip_params[:price]
    trips = trips.where("start_date >= ?", trip_params[:start_date]) if trip_params[:start_date]
    trips = trips.where("end_date <= ?", trip_params[:end_date])if trip_params[:end_date]
    if trip_params[:start_date] && trip_params[:end_date]
      trips = trips.where("t.start_date >= ? and end_date <= ?",
          trip_params[:start_date], trip_params[:end_date])
    end
    trips = trips.where("number_of_member = ?", trip_params[:number]) if trip_params[:number]
    trips = trips.where("start_date >= ? ", Date.today) if trip_params[:start_date].nil?
    trips
  end

end
