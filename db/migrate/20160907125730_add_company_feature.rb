class AddCompanyFeature < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :siret_number, :int
    add_column :companies, :phone_number, :int
    add_column :companies, :address_id, :int
  end
end
