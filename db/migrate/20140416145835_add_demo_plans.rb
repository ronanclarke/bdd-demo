class AddDemoPlans < ActiveRecord::Migration
  def up
    Plan.destroy_all

    Plan.create(:name=>"Basic",:price=> 5, :kittens_per_month=>20)
    Plan.create(:name=>"Premium",:price=> 30, :kittens_per_month=>50)
    Plan.create(:name=>"Ultimate",:price=> 50, :kittens_per_month=>100)

  end

  def down
    Plan.destroy_all
  end
end
