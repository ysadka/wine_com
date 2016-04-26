class CreateCarts < ActiveRecord::Migration
  def up
    create_join_table :wines, :users, table_name: :carts do |t|
      t.index   :wine_id
      t.index   :user_id
      t.integer :quantity, null: false

      t.timestamps
    end
  end

  def down
    drop_table :carts
  end
end
