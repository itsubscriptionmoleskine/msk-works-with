require 'rails_helper'

RSpec.describe AppStoreLink, type: :model do
  it 'has a valid Factory' do
    expect(build(:app_store_link)).to be_valid
  end
  it { should belong_to(:app_store)}
  it { should belong_to(:app)}
end
