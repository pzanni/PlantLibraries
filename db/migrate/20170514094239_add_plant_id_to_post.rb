class AddPlantIdToPost < ActiveRecord::Migration
  def change
    add_column :posts, :plant_id, :integer
  end
end
