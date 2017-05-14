class CreatePost < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :post_id
      t.integer :user_id
      t.string :content
    end
  end
end
