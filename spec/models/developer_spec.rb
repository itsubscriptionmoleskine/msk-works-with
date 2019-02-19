require 'rails_helper'

RSpec.describe Developer, type: :model do

  it 'has a valid Factory' do
    expect(build(:developer)).to be_valid
  end
  it 'has a valid Factory with a Work In Progress Trait' do
    expect(build(:developer, :wip)).to be_valid
  end
  it {should have_many(:apps)}
  it { should validate_presence_of(:slug) }
  it 'is not valid when the description is too long' do
    expect(build(:developer, :description_too_long)).to_not be_valid
  end
end