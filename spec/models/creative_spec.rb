require 'rails_helper'

RSpec.describe Creative, type: :model do
  it 'validates presence of type' do
    expect(Creative.new).to_not be_valid
  end
end
