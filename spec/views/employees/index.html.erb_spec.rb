require 'rails_helper'

RSpec.describe "employees/index", :type => :view do
  before(:each) do
    assign(:employees, [
      Employee.create!(
        :name => "Name",
        :middle_name => "Middle Name",
        :last_name => "Last Name",
        :salary => 1.5
      ),
      Employee.create!(
        :name => "Name",
        :middle_name => "Middle Name",
        :last_name => "Last Name",
        :salary => 1.5
      )
    ])
  end

  it "renders a list of employees" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Middle Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
