class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :first_name
      t.string :last_name
      t.string :city
      t.string :postal_code
      t.string :privince
      t.string :phone_number
      t.string :email
      t.string :order_type
      t.string :food
      t.string :drink

      t.timestamps
    end
  end
end
