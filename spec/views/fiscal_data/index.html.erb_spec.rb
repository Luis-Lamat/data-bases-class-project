require 'rails_helper'

RSpec.describe "fiscal_data/index", :type => :view do
  before(:each) do
    assign(:fiscal_data, [
      FiscalDatum.create!(
        :RFC => "Rfc",
        :entity_name => "Entity Name"
      ),
      FiscalDatum.create!(
        :RFC => "Rfc",
        :entity_name => "Entity Name"
      )
    ])
  end

  it "renders a list of fiscal_data" do
    render
    assert_select "tr>td", :text => "Rfc".to_s, :count => 2
    assert_select "tr>td", :text => "Entity Name".to_s, :count => 2
  end
end
