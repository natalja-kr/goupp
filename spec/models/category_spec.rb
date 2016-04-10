require 'rails_helper'

RSpec.describe Category, type: :model do
  it 'validate presence name' do
    expect(Category.new).to_not be_valid
  end
end
