require 'rails_helper'

RSpec.describe AppsController, type: :controller do
  describe 'get INDEX' do
    user_sign_in
    let(:platform) { create :platform }
    let(:app) { create(:app, user: @user, platform: platform) }
    before { get :index }
    it 'renders the index template' do
      expect(response).to render_template("index")
    end
    it 'return apps list' do
      expect(assigns(:app)).to match_array(app)
    end
  end
end
