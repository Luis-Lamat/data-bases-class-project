require 'rails_helper'

RSpec.describe "order_vehicle_workshops/index", :type => :view do
  before(:each) do
    assign(:order_vehicle_workshops, [
      OrderVehicleWorkshop.create!(
        :vehicle_id => 1,
        :workshop_id => 2,
        :order_id => 3
      ),
      OrderVehicleWorkshop.create!(
        :vehicle_id => 1,
        :workshop_id => 2,
        :order_id => 3
      )
    ])
  end

  it "renders a list of order_vehicle_workshops" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
