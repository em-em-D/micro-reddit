class AddingPostIdAndUserIdToComment < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :user_id, :integer
    remove_column :comments, :post_id, :integer
    add_reference :comments, :user_id, foreign_key: true
    add_reference :comments, :post_id, foreign_key: true
  end
end
