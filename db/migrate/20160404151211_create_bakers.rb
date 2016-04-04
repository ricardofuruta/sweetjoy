class CreateBakers < ActiveRecord::Migration
  def change
    create_table :bakers do |t|
      t.string :firstname
      t.string :lastname
      t.string :description
      t.string :address

      t.timestamps null: false
    end
  end
end
