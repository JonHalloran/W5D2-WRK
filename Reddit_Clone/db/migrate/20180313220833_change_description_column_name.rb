class ChangeDescriptionColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :subs, :descripion, :description
  end
end
