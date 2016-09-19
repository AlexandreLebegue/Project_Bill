class Bill_item < ActiveRecord::Base
  # Set up Company to have many_users
  belongs_to :bill
  # We want to validate at least one field you can choose any
  # field you want

  # Add other validations etc...

end
