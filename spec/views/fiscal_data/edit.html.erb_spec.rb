require 'rails_helper'

RSpec.describe "fiscal_data/edit", :type => :view do
  before(:each) do
    @fiscal_datum = assign(:fiscal_datum, FiscalDatum.create!(
      :RFC => "MyString",
      :entity_name => "MyString"
    ))
  end

  it "renders the edit fiscal_datum form" do
    render

    assert_select "form[action=?][method=?]", fiscal_datum_path(@fiscal_datum), "post" do

      assert_select "input#fiscal_datum_RFC[name=?]", "fiscal_datum[RFC]"

      assert_select "input#fiscal_datum_entity_name[name=?]", "fiscal_datum[entity_name]"
    end
  end
end
