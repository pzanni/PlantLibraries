class AddPlantlibraryIdToUser < ActiveRecord::Migration
  def change
  	add_column :users, :plantlibrary_id, :integer
  end
end
