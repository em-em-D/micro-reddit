class AddingPostIdAndUserIdToComment < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :user_id, foreign_key: true
    add_reference :comments, :post_id, foreign_key: true
  end
end
