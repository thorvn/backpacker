class Trip < ApplicationRecord

  scope :available, -> do
    where("start_date >= ? and user_id is null", Date.today).order("created_at DESC")
  end

  def self.search(trips, trip_params)
    trip_params = trip_params.reject{|_, v| v.blank?}
    trips = trips.where("price <= ?", trip_params[:price]) if trip_params[:price]
    trips = trips.where("number_of_member = ?", trip_params[:number]) if trip_params[:number]
    trips = trips.where("start_date = ?", trip_params[:start_date]) if trip_params[:start_date]
    trips = trips.where("end_date = ?", trip_params[:end_date])if trip_params[:end_date]
    trips
  end

end
