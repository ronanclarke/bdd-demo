class HomeController < ApplicationController

  def pricing
    @plans = Plan.all
  end


end