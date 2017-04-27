class CreatePlantlibraries < ActiveRecord::Migration
  def change
    create_table :plantlibraries do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
