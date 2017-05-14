class RemovePostIsFromPost < ActiveRecord::Migration
  def change
    remove_column :posts, :post_id, :integer
    remove_column :plantclubs, :plantclub_id, :integer
  end
end
