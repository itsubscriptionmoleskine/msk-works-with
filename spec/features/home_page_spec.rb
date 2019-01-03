require 'rails_helper'

RSpec.describe 'Link to Intro Page', :type => :feature do

  it 'checks for link to intro page', :js => true  do
    visit root_path
    expect(page).to have_selector(:css, 'a[href="/intro"]')
  end

  it 'checks for return link', :js => true  do
    visit intro_path
    expect(page).to have_selector(:css, 'a[href="/home"]')
  end

end