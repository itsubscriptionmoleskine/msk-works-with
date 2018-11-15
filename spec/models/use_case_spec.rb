require 'rails_helper'

RSpec.describe UseCase, type: :model do
  it 'has a valid Factory' do
    expect(build(:use_case)).to be_valid
    end
end
