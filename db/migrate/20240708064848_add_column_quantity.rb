class AddColumnQuantity < ActiveRecord::Migration[7.1]
  def change
    add_column :Myproducts, :quantity, :integer
  end
end
