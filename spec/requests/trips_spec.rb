require "rails_helper"

describe "Trip Requests" , type: :request do
  let!(:trip_one) { create(:trip_one) }
  let!(:trip_two) { create(:trip_two) }

  describe "find trips" do
    it "should return one trip" do
      login_user

      get '/find_trips', params: { trip: { price: 20} }
      expect(response).to be_success
      expect(response.body).to include("Trip two")
    end
  end
end

