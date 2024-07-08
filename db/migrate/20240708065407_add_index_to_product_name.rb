class AddIndexToProductName < ActiveRecord::Migration[7.1]
  def change
    add_index :Myproducts, :name
  end
end
