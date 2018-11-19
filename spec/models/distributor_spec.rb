require 'rails_helper'

RSpec.describe Distributor, type: :model do
  it 'has a valid Factory' do
    expect(build(:distributor)).to be_valid
  end
end
