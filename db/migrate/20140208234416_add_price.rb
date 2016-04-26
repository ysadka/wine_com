class AddPrice < ActiveRecord::Migration
  def up
    add_column :wines, :price, :integer, null: false
  end

  def down
    remove_column :wines, :price
  end
end
