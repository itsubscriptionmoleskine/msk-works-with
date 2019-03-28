require 'rails_helper'

RSpec.describe 'Meta-data is available', :type => :feature do

  it 'checks the homepage', :js => true  do
    visit root_path
    title = I18n.t('pages.homepage.meta.title')
    des = I18n.t('pages.homepage.meta.description')
    kw = I18n.t('pages.homepage.meta.keywords')
    expect(page).to have_title(title)
    expect(page).to have_css('meta[name="description"][content="'+ des +'"]', visible: false)
    expect(page).to have_css('meta[name="keywords"][content="'+ kw +'"]', visible: false)

  end

  it 'checks the partners index page', :js => true  do
    visit partners_path
    title = I18n.t('pages.partners.meta.title')
    des = I18n.t('pages.partners.meta.description')
    kw = I18n.t('pages.partners.meta.keywords')
    expect(page).to have_title(title)
    expect(page).to have_css('meta[name="description"][content="'+ des +'"]', visible: false)
    expect(page).to have_css('meta[name="keywords"][content="'+ kw +'"]', visible: false)
  end

  it 'checks the works with index page', :js => true  do
    visit works_withs_path
    title = I18n.t('pages.works_with.meta.title')
    des = I18n.t('pages.works_with.meta.description')
    kw = I18n.t('pages.works_with.meta.keywords')
    expect(page).to have_title(title)
    expect(page).to have_css('meta[name="description"][content="'+ des +'"]', visible: false)
    expect(page).to have_css('meta[name="keywords"][content="'+ kw +'"]', visible: false)
  end

end