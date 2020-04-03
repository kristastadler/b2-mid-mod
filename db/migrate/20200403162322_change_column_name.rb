class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :rides, :title, :name
  end
end
