class HomeController < ApplicationController
  def index
    add_breadcrumb 'Home', home_path
    @testimonial_promos = Testimonial.all.last(3)
  end
end
