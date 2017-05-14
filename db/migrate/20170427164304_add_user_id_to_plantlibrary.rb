class AddUserIdToPlantlibrary < ActiveRecord::Migration
  def change
  	add_column :plantlibraries, :user_id, :integer
  end
end
