require 'rails_helper'

RSpec.describe WorksWith, type: :model do
  it 'has a valid Factory' do
    expect(build(:works_with)).to be_valid
  end
  it { should have_many(:use_cases)}
  it { should have_many(:testimonials)}
  it { should belong_to(:offering)}
  it { should belong_to(:app)}
end
