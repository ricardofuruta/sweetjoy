class CreateOrderLines < ActiveRecord::Migration
  def change
    create_table :order_lines do |t|
      t.references :order, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true
      t.string :special_instruction
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
