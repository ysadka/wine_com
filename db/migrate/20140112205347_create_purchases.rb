class CreatePurchases < ActiveRecord::Migration
  def change
    create_join_table :wines, :users, table_name: :purchases do |t|
      t.index   :wine_id
      t.index   :user_id
      t.integer :quantity
      t.boolean :fulfilled

      t.timestamps
    end
  end
end
