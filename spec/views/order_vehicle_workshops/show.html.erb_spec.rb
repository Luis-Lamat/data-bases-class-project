require 'rails_helper'

RSpec.describe "order_vehicle_workshops/show", :type => :view do
  before(:each) do
    @order_vehicle_workshop = assign(:order_vehicle_workshop, OrderVehicleWorkshop.create!(
      :vehicle_id => 1,
      :workshop_id => 2,
      :order_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
