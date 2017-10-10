require "rails_helper"

describe Trip, type: :model do
  it "create trips" do
    trip_one = create(:trip_one)
    trip_two = create(:trip_two)

    expect(Trip.all).to eq([trip_one, trip_two])
  end
end
