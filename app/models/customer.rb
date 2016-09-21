class Customer < ActiveRecord::Base
  # Set up Company to have many_users
  has_many :bills
  belongs_to :companies
  # We want to validate at least one field you can choose any
  # field you want

  # Add other validations etc...

end
