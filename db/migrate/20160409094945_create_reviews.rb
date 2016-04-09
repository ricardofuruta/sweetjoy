class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :content
      t.references :baker, index: true, foreign_key: true
      t.integer :rate

      t.timestamps null: false
    end
  end
end
