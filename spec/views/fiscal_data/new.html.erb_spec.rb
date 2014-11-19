require 'rails_helper'

RSpec.describe "fiscal_data/new", :type => :view do
  before(:each) do
    assign(:fiscal_datum, FiscalDatum.new(
      :RFC => "MyString",
      :entity_name => "MyString"
    ))
  end

  it "renders new fiscal_datum form" do
    render

    assert_select "form[action=?][method=?]", fiscal_data_path, "post" do

      assert_select "input#fiscal_datum_RFC[name=?]", "fiscal_datum[RFC]"

      assert_select "input#fiscal_datum_entity_name[name=?]", "fiscal_datum[entity_name]"
    end
  end
end
