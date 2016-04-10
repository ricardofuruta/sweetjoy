class AddAverageratingToBakers < ActiveRecord::Migration
  def change
    add_column :bakers, :averagerate, :float
  end
end
