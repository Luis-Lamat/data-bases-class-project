require "rails_helper"

RSpec.describe OrderVehicleWorkshopsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/order_vehicle_workshops").to route_to("order_vehicle_workshops#index")
    end

    it "routes to #new" do
      expect(:get => "/order_vehicle_workshops/new").to route_to("order_vehicle_workshops#new")
    end

    it "routes to #show" do
      expect(:get => "/order_vehicle_workshops/1").to route_to("order_vehicle_workshops#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/order_vehicle_workshops/1/edit").to route_to("order_vehicle_workshops#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/order_vehicle_workshops").to route_to("order_vehicle_workshops#create")
    end

    it "routes to #update" do
      expect(:put => "/order_vehicle_workshops/1").to route_to("order_vehicle_workshops#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/order_vehicle_workshops/1").to route_to("order_vehicle_workshops#destroy", :id => "1")
    end

  end
end
