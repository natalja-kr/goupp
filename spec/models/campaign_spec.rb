require 'rails_helper'

RSpec.describe Campaign, type: :model do
  it 'validate presence app, version, operator' do
    expect(Campaign.new).to_not be_valid
  end
end
