class HomeController < ApplicationController
  def index
    ##
    # Creates arrays of Testimonials and Works With
    # for use with promotional components on the homepage
    add_breadcrumb 'Home', home_path
    @testimonial_promos = Testimonial.all.last(3)
    @featured_example = WorksWith.all.last(1)
    @page_title = t('pages.homepage.meta.title')
    @page_description = t('pages.homepage.meta.description')
    @page_keywords = t('pages.homepage.meta.keywords')
  end
end
