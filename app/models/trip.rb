class Trip < ApplicationRecord

  scope :available, -> do
    where("start_date >= ? and user_id is null", Date.today).order("created_at DESC")
  end

  def self.search(trip_params)
    query = ""
    if trip_params[:price].present?
      query << "and price <= #{trip_params[:price].to_i} "
    elsif trip_params[:number].present?
      query << "and number_of_member = #{trip_params[:number].to_i} "
    elsif trip_params[:start_date].present?
      query << "and start_date = '#{trip_params[:start_date].to_date}' "
    elsif trip_params[:end_date].present?
      query << "and end_date = '#{trip_params[:end_date].to_date}' "
    end
    query.empty? ? [] : where("user_id is null #{query}")
  end

end
