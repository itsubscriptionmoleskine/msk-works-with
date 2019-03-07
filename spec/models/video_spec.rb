require 'rails_helper'

RSpec.describe Video, type: :model do
  it 'has a valid Factory' do
    expect(build(:video)).to be_valid
  end
  it { should belong_to(:works_with)}
end
