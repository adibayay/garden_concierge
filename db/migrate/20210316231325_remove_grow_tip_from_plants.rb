class RemoveGrowTipFromPlants < ActiveRecord::Migration[6.0]
  def change
    remove_column :plants, :grow_tip, :string
  end
end
