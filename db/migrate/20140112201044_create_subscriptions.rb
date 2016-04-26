class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.string  :name
      t.integer :monthly_cost

      t.timestamps
    end
  end
end
