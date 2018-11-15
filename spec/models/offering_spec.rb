require 'rails_helper'

RSpec.describe Offering, type: :model do
  it 'has a valid Factory' do
    expect(build(:offering)).to be_valid
    end
end
