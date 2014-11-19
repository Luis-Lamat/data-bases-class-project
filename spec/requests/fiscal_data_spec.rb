require 'rails_helper'

RSpec.describe "FiscalData", :type => :request do
  describe "GET /fiscal_data" do
    it "works! (now write some real specs)" do
      get fiscal_data_path
      expect(response).to have_http_status(200)
    end
  end
end
