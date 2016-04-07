class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :user, index: true, foreign_key: true
      t.string :delivery_address
      t.date :delivery_date

      t.timestamps null: false
    end
  end
end
