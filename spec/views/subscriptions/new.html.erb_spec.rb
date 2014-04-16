require 'spec_helper'

describe "subscriptions/new" do
  before(:each) do
    assign(:subscription, stub_model(Subscription,
      :user_id => 1,
      :plan_id => 1,
      :price => 1.5
    ).as_new_record)
  end

  it "renders new subscription form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", subscriptions_path, "post" do
      assert_select "input#subscription_user_id[name=?]", "subscription[user_id]"
      assert_select "input#subscription_plan_id[name=?]", "subscription[plan_id]"
      assert_select "input#subscription_price[name=?]", "subscription[price]"
    end
  end
end
