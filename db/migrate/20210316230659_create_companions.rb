class CreateCompanions < ActiveRecord::Migration[6.0]
  def change
    create_table :companions do |t|
      t.integer :plant_id
      t.integer :companion_id

      t.timestamps
    end
  end
end
