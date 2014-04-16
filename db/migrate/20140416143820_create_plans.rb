class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :name
      t.float :price
      t.integer :kittens_per_month

      t.timestamps
    end
  end
end
