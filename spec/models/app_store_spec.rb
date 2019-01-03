require 'rails_helper'

RSpec.describe AppStore, type: :model do
  it 'has a valid Factory' do
    expect(build(:app_store)).to be_valid
  end
end
