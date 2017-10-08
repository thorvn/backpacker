class Trip < ApplicationRecord

  scope :available_trips, -> { where("start_date >= ? and user_id != ?", Date.today, current_user) }
  scope :pricing, ->(price) { where("price <= ?", price) }
  scope :range_of_time, ->(start_date, end_date) do
    where("start_date = ? and end_date = ?", start_date, end_date)
  end

  scope :members, ->(number) { where("number_of_member = ?", number_of_member) }
end
