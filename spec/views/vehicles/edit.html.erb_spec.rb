require 'rails_helper'

RSpec.describe "vehicles/edit", :type => :view do
  before(:each) do
    @vehicle = assign(:vehicle, Vehicle.create!(
      :series_num => "MyString",
      :model => "MyString",
      :brand => "MyString",
      :color => "MyString",
      :placas => "MyString"
    ))
  end

  it "renders the edit vehicle form" do
    render

    assert_select "form[action=?][method=?]", vehicle_path(@vehicle), "post" do

      assert_select "input#vehicle_series_num[name=?]", "vehicle[series_num]"

      assert_select "input#vehicle_model[name=?]", "vehicle[model]"

      assert_select "input#vehicle_brand[name=?]", "vehicle[brand]"

      assert_select "input#vehicle_color[name=?]", "vehicle[color]"

      assert_select "input#vehicle_placas[name=?]", "vehicle[placas]"
    end
  end
end
