require 'rails_helper'

RSpec.describe ReportsController, :type => :controller do

  describe "GET employee_on_vehicle" do
    it "returns http success" do
      get :employee_on_vehicle
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET vehicle_workshop" do
    it "returns http success" do
      get :vehicle_workshop
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET vehicle_spare_parts" do
    it "returns http success" do
      get :vehicle_spare_parts
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET vehicle_procedures" do
    it "returns http success" do
      get :vehicle_procedures
      expect(response).to have_http_status(:success)
    end
  end

end
