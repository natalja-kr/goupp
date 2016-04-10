require 'rails_helper'

RSpec.describe Platform, type: :model do
  it 'validate presence name' do
    expect(Platform.new).to_not be_valid
  end
end
