class OmniauthController < ApplicationController
  # this is basically a function of routing to make sure the /auth/:provider gets to the provider correctly
  def passthru
    render :file => "#{Rails.root}/public/404.html", :status => 404, :layout => false
  end
end
