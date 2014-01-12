class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string  :address1
      t.string  :address2
      t.string  :company
      t.string  :city
      t.string  :state
      t.integer :zip
    end
  end
end
