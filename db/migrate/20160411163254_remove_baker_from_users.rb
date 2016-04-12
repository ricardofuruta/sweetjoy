class RemoveBakerFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :baker_id
  end
end
