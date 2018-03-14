class RenamePostsubsTable < ActiveRecord::Migration[5.1]
  def change
    rename_table :post_subs, :postsubs
  end
end
