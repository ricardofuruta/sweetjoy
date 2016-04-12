class AddBakerToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :baker, index: true, foreign_key: true
  end
end
