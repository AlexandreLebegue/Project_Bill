class Bill < ActiveRecord::Base
  # Set up Company to have many_users
  has_many :bill_items
  belongs_to :users
  # We want to validate at least one field you can choose any
  # field you want

  # Add other validations etc...

end
