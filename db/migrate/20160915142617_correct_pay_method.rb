class CorrectPayMethod < ActiveRecord::Migration[5.0]
  def change
    remove_column :bills, :pay_method
    add_column :bills, :pay_method, :string
  end
end
