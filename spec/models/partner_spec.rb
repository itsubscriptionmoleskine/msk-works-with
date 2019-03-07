require 'rails_helper'

RSpec.describe Partner, type: :model do

  it 'has a valid Factory' do
    expect(build(:partner)).to be_valid
  end
  it 'has a valid Factory with a Work In Progress Trait' do
    expect(build(:partner, :wip)).to be_valid
  end
  it {should have_many(:apps)}
  it { should validate_presence_of(:slug) }
  it 'is not valid when the promo text is too long' do
    expect(build(:product, :promo_text_too_long)).to_not be_valid
  end
end