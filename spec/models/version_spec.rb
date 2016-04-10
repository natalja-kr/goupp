require 'rails_helper'

RSpec.describe Version, type: :model do
  it 'validate presence of name' do
    expect(Version.new()).to_not be_valid
  end
end
