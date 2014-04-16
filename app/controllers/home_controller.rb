class HomeController < ApplicationController

  before_filter :authenticate_user!

  def pricing
    @plans = Plan.all
  end


end