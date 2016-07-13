require 'rails_helper'

RSpec.describe "Campaigns", type: :request do
  describe "GET /campaigns" do
    it "works! (now write some real specs)" do
      get campaigns_path
      expect(response).to have_http_status(302)
    end
  end
end
