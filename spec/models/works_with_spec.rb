require 'rails_helper'

RSpec.describe WorksWith, type: :model do
  it 'has a valid Factory' do
    expect(build(:works_with)).to be_valid
    end
end
