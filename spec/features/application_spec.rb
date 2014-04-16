require 'spec/spec_helper'

describe :Application, type: :feature do

  before(:each) do

    create(:plan,:name=>"Basic",:price=> 5, :kittens_per_month=>20)
    create(:plan,:name=>"Premium",:price=> 30, :kittens_per_month=>50)
    create(:plan,:name=>"Ultimate",:price=> 50, :kittens_per_month=>100)

  end

  it "should have a pricing page" do

    visit pricing_path

    page.should have_content("Pricing")

    # for each plan .. check that the plan name is displayed
    @plans = Plan.all

    @plans.each do |plan|
      page.should have_content(plan.name)
      find("img#plan_image_#{plan.name.downcase}")

    end

    #find(".subscribe").size.should be(@plans.size)

  end


end