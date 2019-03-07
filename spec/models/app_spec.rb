require 'rails_helper'

RSpec.describe App, type: :model do
  it 'has a valid Factory' do
    expect(build(:app)).to be_valid
  end
  it { should belong_to(:partner)}
  it { should have_many(:app_store_links)}
  it { should validate_presence_of(:slug) }
  it 'is not valid when the description is too long' do
    expect(build(:app, :description_too_long)).to_not be_valid
  end
end
