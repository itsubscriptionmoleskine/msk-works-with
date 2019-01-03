require 'rails_helper'

RSpec.describe WorksWith, type: :model do
  it 'has a valid Factory' do
    expect(build(:works_with)).to be_valid
  end
  it { should have_many(:use_cases)}
  it { should have_many(:testimonials)}
  it { should belong_to(:product)}
  it { should belong_to(:app)}
  it 'is not valid when the promo text is too long' do
    expect(build(:works_with, :promo_text_too_long)).to_not be_valid
  end
end
