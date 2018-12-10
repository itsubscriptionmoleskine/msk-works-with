class HomeController < ApplicationController
  def index
    add_breadcrumb 'Home', home_path
    @testimonial_promos = Testimonial.all.last(3)
    @featured_example = WorksWith.all.last(1)
  end
end
