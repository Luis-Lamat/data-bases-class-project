require 'rails_helper'

RSpec.describe "fiscal_data/show", :type => :view do
  before(:each) do
    @fiscal_datum = assign(:fiscal_datum, FiscalDatum.create!(
      :RFC => "Rfc",
      :entity_name => "Entity Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Rfc/)
    expect(rendered).to match(/Entity Name/)
  end
end
