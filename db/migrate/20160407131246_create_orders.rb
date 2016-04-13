class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :user, index: true, foreign_key: true
      t.string :delivery_address
      t.date :delivery_date
      t.integer :order_line_id
      t.integer :buyer_id
      t.monetize :amount, currency: { present: false }
      t.json :payment

      t.timestamps null: false
    end
    add_index :orders, [:order_line_id, :buyer_id], unique: true
  end
end
