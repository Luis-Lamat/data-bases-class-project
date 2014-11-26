require 'rails_helper'

RSpec.describe "order_vehicle_workshops/new", :type => :view do
  before(:each) do
    assign(:order_vehicle_workshop, OrderVehicleWorkshop.new(
      :vehicle_id => 1,
      :workshop_id => 1,
      :order_id => 1
    ))
  end

  it "renders new order_vehicle_workshop form" do
    render

    assert_select "form[action=?][method=?]", order_vehicle_workshops_path, "post" do

      assert_select "input#order_vehicle_workshop_vehicle_id[name=?]", "order_vehicle_workshop[vehicle_id]"

      assert_select "input#order_vehicle_workshop_workshop_id[name=?]", "order_vehicle_workshop[workshop_id]"

      assert_select "input#order_vehicle_workshop_order_id[name=?]", "order_vehicle_workshop[order_id]"
    end
  end
end
