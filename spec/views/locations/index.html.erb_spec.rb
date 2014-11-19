require 'rails_helper'

RSpec.describe "locations/index", :type => :view do
  before(:each) do
    assign(:locations, [
      Location.create!(
        :street => "Street",
        :street_number => 1,
        :suburb => "Suburb",
        :postal_code => 2
      ),
      Location.create!(
        :street => "Street",
        :street_number => 1,
        :suburb => "Suburb",
        :postal_code => 2
      )
    ])
  end

  it "renders a list of locations" do
    render
    assert_select "tr>td", :text => "Street".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Suburb".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
