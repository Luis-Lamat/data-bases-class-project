require "rails_helper"

RSpec.describe LaborsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/labors").to route_to("labors#index")
    end

    it "routes to #new" do
      expect(:get => "/labors/new").to route_to("labors#new")
    end

    it "routes to #show" do
      expect(:get => "/labors/1").to route_to("labors#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/labors/1/edit").to route_to("labors#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/labors").to route_to("labors#create")
    end

    it "routes to #update" do
      expect(:put => "/labors/1").to route_to("labors#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/labors/1").to route_to("labors#destroy", :id => "1")
    end

  end
end
