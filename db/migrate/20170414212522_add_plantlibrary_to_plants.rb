class AddPlantlibraryToPlants < ActiveRecord::Migration
  def change
    add_column :plants, :plantlibrary_id, :integer
  end
end
