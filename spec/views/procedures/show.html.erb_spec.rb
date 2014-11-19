require 'rails_helper'

RSpec.describe "procedures/show", :type => :view do
  before(:each) do
    @procedure = assign(:procedure, Procedure.create!(
      :description => "MyText",
      :consumible_lab => 1.5,
      :consumible_general => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
  end
end
