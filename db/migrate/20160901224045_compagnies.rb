class Compagnies < ActiveRecord::Migration[5.0]

  def change
    create_table :Companies
    add_column :Companies, :name, :string
    add_column :Companies, :address_id, :int
    add_column :Companies, :siret_number, :int
    add_column :Companies, :phone_number, :int
  end
  
end
