class AddFullnameToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :fullname, :string
    add_column :orders, :instructions, :string
  end
end
