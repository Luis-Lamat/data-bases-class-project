require 'rails_helper'

RSpec.describe "locations/show", :type => :view do
  before(:each) do
    @location = assign(:location, Location.create!(
      :street => "Street",
      :street_number => 1,
      :suburb => "Suburb",
      :postal_code => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Street/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Suburb/)
    expect(rendered).to match(/2/)
  end
end
