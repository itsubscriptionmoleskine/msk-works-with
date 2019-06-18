class CookiePolicyController < ApplicationController
  def index
    add_breadcrumb 'Home', home_path
    add_breadcrumb 'Cookie Policy', cookie_policy_path
  end
end