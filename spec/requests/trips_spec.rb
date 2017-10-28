require "rails_helper"

describe "Trip Requests" , type: :request do
  let!(:trip_one) { create(:trip_one) }
  let!(:trip_two) { create(:trip_one, price: 20, title: "Trip two", start_date: Date.today + 3.days,
    end_date: Date.today + 14.days, number_of_member: 2 ) }

  describe "find trips" do
    it "should return one trip" do

      get '/search', params: { trip: { price: 20, start_date: Date.today + 3.days} }
      expect(response).to be_success
      expect(response.body).to include("Trip two")
    end
  end
end

