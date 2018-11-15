require 'rails_helper'

RSpec.describe ExampleImage, type: :model do
  it 'has a valid Factory' do
    expect(build(:example_image)).to be_valid
    end
end
