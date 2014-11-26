require 'rails_helper'

RSpec.describe "order_vehicle_workshops/edit", :type => :view do
  before(:each) do
    @order_vehicle_workshop = assign(:order_vehicle_workshop, OrderVehicleWorkshop.create!(
      :vehicle_id => 1,
      :workshop_id => 1,
      :order_id => 1
    ))
  end

  it "renders the edit order_vehicle_workshop form" do
    render

    assert_select "form[action=?][method=?]", order_vehicle_workshop_path(@order_vehicle_workshop), "post" do

      assert_select "input#order_vehicle_workshop_vehicle_id[name=?]", "order_vehicle_workshop[vehicle_id]"

      assert_select "input#order_vehicle_workshop_workshop_id[name=?]", "order_vehicle_workshop[workshop_id]"

      assert_select "input#order_vehicle_workshop_order_id[name=?]", "order_vehicle_workshop[order_id]"
    end
  end
end
