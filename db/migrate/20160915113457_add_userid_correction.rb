class AddUseridCorrection < ActiveRecord::Migration[5.0]
  def change
    add_reference :bills, :user, index: true
    remove_reference :users, :bill, index: true
  end
end
