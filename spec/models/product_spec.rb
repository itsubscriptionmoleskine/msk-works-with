require 'rails_helper'

RSpec.describe Product, type: :model do
  it 'has a valid Factory' do
    expect(build(:product)).to be_valid
  end
  it 'is not valid when the promo text is too long' do
    expect(build(:product, :promo_text_too_long)).to_not be_valid
  end
end
