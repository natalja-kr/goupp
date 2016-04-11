require 'rails_helper'

RSpec.describe DashboardController, type: :controller do
  describe 'GET INDEX' do
    user_sign_in
    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

end
