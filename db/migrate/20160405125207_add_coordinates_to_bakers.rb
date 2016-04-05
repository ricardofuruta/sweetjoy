class AddCoordinatesToBakers < ActiveRecord::Migration
  def change
    add_column :bakers, :latitude, :float
    add_column :bakers, :longitude, :float
  end
end
