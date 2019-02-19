require 'rails_helper'

RSpec.describe Testimonial, type: :model do
  it 'has a valid Factory' do
    expect(build(:testimonial)).to be_valid
  end
  it { should belong_to(:works_with)}
  it { should have_many(:testimonial_slides)}
  it { should validate_presence_of(:slug) }
  it 'is not valid when the promo text is too long' do
    expect(build(:testimonial, :promo_text_too_long)).to_not be_valid
  end
end
