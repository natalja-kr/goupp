require 'rails_helper'

RSpec.describe App, type: :model do
  it 'validates presence of name' do
    expect(App.new(description: 'descr111')).to_not be_valid
  end

  it 'validates presence of description' do
    expect(App.new(name: 'Name')).to_not be_valid
  end

  it 'validates presence of user' do
    expect(App.new(name: 'test1', description: 'test1')).to_not be_valid
  end

  it 'validates presence of platform' do
    expect(App.new(name: 'test1', description: 'test1', user_id: 1)).to_not be_valid
  end
end
