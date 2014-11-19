require 'rails_helper'

RSpec.describe "employees/new", :type => :view do
  before(:each) do
    assign(:employee, Employee.new(
      :name => "MyString",
      :middle_name => "MyString",
      :last_name => "MyString",
      :salary => 1.5
    ))
  end

  it "renders new employee form" do
    render

    assert_select "form[action=?][method=?]", employees_path, "post" do

      assert_select "input#employee_name[name=?]", "employee[name]"

      assert_select "input#employee_middle_name[name=?]", "employee[middle_name]"

      assert_select "input#employee_last_name[name=?]", "employee[last_name]"

      assert_select "input#employee_salary[name=?]", "employee[salary]"
    end
  end
end
