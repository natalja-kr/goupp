require 'rails_helper'

RSpec.describe Country, type: :model do
  it 'validate presence name' do
    expect(Country.new).to_not be_valid
  end
end
