class CreatePlantclub < ActiveRecord::Migration
  def change
    create_table :plantclubs do |t|
      t.integer :plantclub_id
      t.string :name
      t.integer :user_id
    end
  end
end
