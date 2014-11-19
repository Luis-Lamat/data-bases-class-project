require 'rails_helper'

RSpec.describe "locations/new", :type => :view do
  before(:each) do
    assign(:location, Location.new(
      :street => "MyString",
      :street_number => 1,
      :suburb => "MyString",
      :postal_code => 1
    ))
  end

  it "renders new location form" do
    render

    assert_select "form[action=?][method=?]", locations_path, "post" do

      assert_select "input#location_street[name=?]", "location[street]"

      assert_select "input#location_street_number[name=?]", "location[street_number]"

      assert_select "input#location_suburb[name=?]", "location[suburb]"

      assert_select "input#location_postal_code[name=?]", "location[postal_code]"
    end
  end
end
