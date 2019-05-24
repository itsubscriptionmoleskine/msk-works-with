require 'rails_helper'

RSpec.describe 'Cookie Bar Is Available', :type => :feature do

  it 'checks the homepage for when a cookie is not set', :js => true  do
    cookies['cookie_consent'] = false
    visit root_path
    expect(page).to have_selector('#cookieBar')
  end

  it 'checks the homepage for when a cookie is  set', :js => true  do
    cookies['cookie_consent'] = true
    visit root_path
    expect(page).to_not have_selector('#cookieBar')
  end

end