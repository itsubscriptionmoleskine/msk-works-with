require 'rails_helper'

RSpec.describe Testimonial, type: :model do
  it 'has a valid Factory' do
    expect(build(:testimonial)).to be_valid
  end
  it { should belong_to(:works_with)}
end
