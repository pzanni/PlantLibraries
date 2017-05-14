class AddPlantlibraryIdToPost < ActiveRecord::Migration
  def change
    add_column :posts, :plantlibrary_id, :integer
    remove_column :posts, :user_id, :integer
  end
end
