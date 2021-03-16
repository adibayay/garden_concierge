class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :plant_type
      t.string :sun_exposure
      t.string :difficulty
      t.string :description
      t.string :spacing
      t.string :grow_tip
      t.string :video_url
      t.string :image_url
      t.string :watering
      t.string :growing
      t.string :harvest
      t.string :feeding
      t.string :other_care
      t.string :diseases
      t.string :pests

      t.timestamps
    end
  end
end
