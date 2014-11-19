require 'rails_helper'

RSpec.describe "labors/show", :type => :view do
  before(:each) do
    @labor = assign(:labor, Labor.create!(
      :description => "MyText",
      :cost => 1.5,
      :external_comision => 1.5,
      :internal_comision => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
  end
end
