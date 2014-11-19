require 'rails_helper'

RSpec.describe "vehicles/new", :type => :view do
  before(:each) do
    assign(:vehicle, Vehicle.new(
      :series_num => "MyString",
      :model => "MyString",
      :brand => "MyString",
      :color => "MyString",
      :placas => "MyString"
    ))
  end

  it "renders new vehicle form" do
    render

    assert_select "form[action=?][method=?]", vehicles_path, "post" do

      assert_select "input#vehicle_series_num[name=?]", "vehicle[series_num]"

      assert_select "input#vehicle_model[name=?]", "vehicle[model]"

      assert_select "input#vehicle_brand[name=?]", "vehicle[brand]"

      assert_select "input#vehicle_color[name=?]", "vehicle[color]"

      assert_select "input#vehicle_placas[name=?]", "vehicle[placas]"
    end
  end
end
