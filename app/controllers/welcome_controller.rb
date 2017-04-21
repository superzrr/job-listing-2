class WelcomeController < ApplicationController
  def index
    flash[:notice] = "Good moring~"
  end
end
