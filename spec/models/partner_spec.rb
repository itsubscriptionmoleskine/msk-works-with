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
end