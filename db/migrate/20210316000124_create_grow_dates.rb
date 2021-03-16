class CreateGrowDates < ActiveRecord::Migration[6.0]
  def change
    create_table :grow_dates do |t|
      t.integer :plant_id
      t.boolean :outdoor_only
      t.integer :early_indoor
      t.integer :late_indoor
      t.integer :early_outdoor
      t.integer :late_outdoor

      t.timestamps
    end
  end
end
