class HomeController < ApplicationController
  def index
    add_breadcrumb 'Home', home_path
    @related_works_with = WorksWith.all.last(3)
  end
end
