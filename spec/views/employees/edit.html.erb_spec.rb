require 'rails_helper'

RSpec.describe "employees/edit", :type => :view do
  before(:each) do
    @employee = assign(:employee, Employee.create!(
      :name => "MyString",
      :middle_name => "MyString",
      :last_name => "MyString",
      :salary => 1.5
    ))
  end

  it "renders the edit employee form" do
    render

    assert_select "form[action=?][method=?]", employee_path(@employee), "post" do

      assert_select "input#employee_name[name=?]", "employee[name]"

      assert_select "input#employee_middle_name[name=?]", "employee[middle_name]"

      assert_select "input#employee_last_name[name=?]", "employee[last_name]"

      assert_select "input#employee_salary[name=?]", "employee[salary]"
    end
  end
end
