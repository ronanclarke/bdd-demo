require 'spec_helper'

describe "subscriptions/show" do
  before(:each) do
    @subscription = assign(:subscription, stub_model(Subscription,
      :user_id => 1,
      :plan_id => 2,
      :price => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/1.5/)
  end
end
