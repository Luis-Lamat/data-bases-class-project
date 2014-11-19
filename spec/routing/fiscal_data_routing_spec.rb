require "rails_helper"

RSpec.describe FiscalDataController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/fiscal_data").to route_to("fiscal_data#index")
    end

    it "routes to #new" do
      expect(:get => "/fiscal_data/new").to route_to("fiscal_data#new")
    end

    it "routes to #show" do
      expect(:get => "/fiscal_data/1").to route_to("fiscal_data#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/fiscal_data/1/edit").to route_to("fiscal_data#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/fiscal_data").to route_to("fiscal_data#create")
    end

    it "routes to #update" do
      expect(:put => "/fiscal_data/1").to route_to("fiscal_data#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/fiscal_data/1").to route_to("fiscal_data#destroy", :id => "1")
    end

  end
end
