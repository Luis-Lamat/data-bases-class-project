require 'rails_helper'

RSpec.describe "SpareParts", :type => :request do
  describe "GET /spare_parts" do
    it "works! (now write some real specs)" do
      get spare_parts_path
      expect(response).to have_http_status(200)
    end
  end
end
