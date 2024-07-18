class AddStatusAttributeToPersonModel < ActiveRecord::Migration[7.1]
  def change
    add_column :people ,:status , :integer
  end
end
