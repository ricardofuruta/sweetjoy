class AddPhotoToBaker < ActiveRecord::Migration
  def change
    add_column :bakers, :photo, :string
  end
end
