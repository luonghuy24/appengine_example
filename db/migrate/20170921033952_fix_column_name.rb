class FixColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :orders, :privince, :province
  end
end
