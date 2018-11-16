require 'rails_helper'

RSpec.describe DistributorLink, type: :model do
  it 'has a valid Factory' do
    expect(build(:distributor_link)).to be_valid
  end
  it { should belong_to(:distributor)}
  it { should belong_to(:app)}
end
