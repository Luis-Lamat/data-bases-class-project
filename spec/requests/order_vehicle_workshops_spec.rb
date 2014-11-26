require 'rails_helper'

RSpec.describe "OrderVehicleWorkshops", :type => :request do
  describe "GET /order_vehicle_workshops" do
    it "works! (now write some real specs)" do
      get order_vehicle_workshops_path
      expect(response).to have_http_status(200)
    end
  end
end
