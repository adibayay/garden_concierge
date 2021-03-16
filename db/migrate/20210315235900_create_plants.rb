class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :plant_type
      t.string :sun_exposure
      t.string :planting_depth
      t.string :height
      t.string :spacing
      t.string :grow_tip
      t.string :video_url
      t.string :image_url
      t.string :maturity

      t.timestamps
    end
  end
end
