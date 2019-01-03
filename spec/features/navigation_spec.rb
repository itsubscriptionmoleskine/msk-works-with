require 'rails_helper'

RSpec.describe 'Navigation is available', :type => :feature do

  it 'checks for top navigation', :js => true  do
    visit root_path
    expect(page).to have_selector(:css, 'a[href="/home"]')
    expect(page).to have_selector(:css, 'a[href="/works_withs"]')
    expect(page).to have_selector(:css, 'a[href="/developers"]')
    expect(page).to have_selector(:css, 'a[href="/testimonials"]')
  end

  it 'checks for footer navigation', :js => true  do
    visit root_path
    expect(page).to have_selector(:css, 'a[href="/privacy"]')
    expect(page).to have_selector(:css, 'a[href="/tos"]')
  end
  
end