class CreateWines < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.string   :name,           null: false

      t.timestamps
    end

    create_table :appellations do |t|
      t.string   :name,       null: false
      t.integer  :region_id,  null: false

      t.timestamps
    end

    create_table :wineries do |t|
      t.string   :name,           null: false
      t.integer  :appellation_id, null: false
      t.integer  :region_id,      null: false

      t.timestamps
    end

    create_table :grapes do |t|
      t.string   :varietal,   null: false

      t.timestamps
    end

    create_table :wines do |t|
      t.integer  :vintage,             null: false
      t.integer  :winery_id,           null: false
      t.integer  :grape_id,            null: false
      t.integer  :alcohol_percentage
      t.integer  :serving_temperature
      t.integer  :sweetness
      t.integer  :acidity
      t.integer  :tanin
      t.integer  :fruit
      t.integer  :body
      t.string   :category_type,       null: false

      t.timestamps
    end
  end
end
