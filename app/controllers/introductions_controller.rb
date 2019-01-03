class IntroductionsController < InheritedResources::Base
  def index
    add_breadcrumb 'Home', home_path
    add_breadcrumb 'About the Works With Program', intro_path
  end
end

