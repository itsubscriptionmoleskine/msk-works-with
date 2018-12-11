require 'rails_helper'

RSpec.describe Offering, type: :model do
  it 'has a valid Factory' do
    expect(build(:offering)).to be_valid
  end
  it 'is not valid when the description is too long' do
    expect(build(:offering, :description_too_long)).to_not be_valid
  end
end
