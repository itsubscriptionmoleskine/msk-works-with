require 'rails_helper'

RSpec.describe App, type: :model do
  it 'has a valid Factory' do
    expect(build(:app)).to be_valid
  end
  it { should belong_to(:developer)}
end
