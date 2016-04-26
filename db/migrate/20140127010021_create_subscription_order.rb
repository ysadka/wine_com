class CreateSubscriptionOrder < ActiveRecord::Migration
  def change
    create_join_table :purchases, :users, table_name: :club_orders do |t|
      t.index   :purchase_id
      t.index   :user_id
      t.boolean :fulfilled

      t.timestamps
    end
  end
end
