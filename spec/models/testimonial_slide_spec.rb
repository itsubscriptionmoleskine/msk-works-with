require 'rails_helper'

RSpec.describe TestimonialSlide, type: :model do
  it 'has a valid Factory' do
    expect(build(:testimonial_slide)).to be_valid
  end
  it { should belong_to(:testimonial)}
end
