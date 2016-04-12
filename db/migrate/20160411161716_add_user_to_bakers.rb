class AddUserToBakers < ActiveRecord::Migration
  def change
    add_reference :bakers, :user, index: true, foreign_key: true
  end
end
