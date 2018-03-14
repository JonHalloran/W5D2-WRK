class CreatePost < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :url
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
