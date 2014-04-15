include Warden::Test::Helpers

module FeatureHelpers
  def login
    user = FactoryGirl.create(:user)
    login_as user, scope: :user
    user
  end

  def nice_date(date)

    date.strftime("%a %b #{date.day.ordinalize} %Y")

  end

  def create_plans

    FactoryGirl.create(:plan_with_price, {name: "Ultimate", price: "349", :features => {:sites => 1000, :exit_intent => true, :content_gate => true}})
    FactoryGirl.create(:plan_with_price, {name: "Premium", price: "199", :features => {:sites => 1000, :exit_intent => true, :content_gate => true}})
    FactoryGirl.create(:plan_with_price, {name: "Standard", price: "99", :features => {:sites => 3, :exit_intent => true, :content_gate => true}})
    FactoryGirl.create(:plan_with_price, {name: "Basic", price: "49", :features => {:sites => 1, :exit_intent => false, :content_gate => false}})


  end

end