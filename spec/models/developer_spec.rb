require 'rails_helper'

RSpec.describe Developer, type: :model do

  it 'has a vaild Factory' do
    expect(build(:developer)).to be_valid
  end
  it 'has a valid Factory with a Work In Progress Trait' do
    expect(build(:developer, :wip)).to be_valid
  end
end