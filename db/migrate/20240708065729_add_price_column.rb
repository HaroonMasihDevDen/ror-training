class AddPriceColumn < ActiveRecord::Migration[7.1]
  def change
    add_column :Myproducts, :price, :float
  end
end
