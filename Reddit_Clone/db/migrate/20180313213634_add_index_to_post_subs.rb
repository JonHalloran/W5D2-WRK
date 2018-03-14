class AddIndexToPostsubs < ActiveRecord::Migration[5.1]
  def change
    rename_column :post_subs,:user_id, :sub_id

    add_index :post_subs, [:post_id, :sub_id], unique: true
  end
end
