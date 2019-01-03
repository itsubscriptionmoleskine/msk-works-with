require 'rails_helper'

RSpec.describe Product, type: :model do
  it 'has a valid Factory' do
    expect(build(:product)).to be_valid
  end
  it 'is not valid when the description is too long' do
    expect(build(:product, :description_too_long)).to_not be_valid
  end
end
