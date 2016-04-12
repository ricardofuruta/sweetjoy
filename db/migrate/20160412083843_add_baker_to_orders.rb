class AddBakerToOrders < ActiveRecord::Migration
  def change
    add_reference :orders, :baker, index: true, foreign_key: true
  end
end
