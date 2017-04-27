class RemoveStringFromPlant < ActiveRecord::Migration
  def change
    remove_column :plants, :string, :string
  end
end
