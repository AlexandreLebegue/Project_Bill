class AddCustomer < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :gender
      t.integer :address_id
      t.integer :code
      t.integer :type
    end

    create_table :bills do |t|
      t.string :bill_date
      t.string :pay_date
      t.string :comment
      t.integer :pay_method
      t.float :amount
    end

    create_table :bill_items do |t|
      t.string :reference
      t.string :label
      t.float :quantity
      t.float :price
      t.float :amount
    end

    add_reference :bill_items, :bill, index: true
    add_reference :bills, :customer, index: true
    add_reference :customers, :company, index: true
  end
end
