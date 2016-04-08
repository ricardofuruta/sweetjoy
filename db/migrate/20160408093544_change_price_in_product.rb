class ChangePriceInProduct < ActiveRecord::Migration
  def change
    remove_column :products, :price, :float
    change_table :products do |t|
      t.monetize :price
    end
  end
end
