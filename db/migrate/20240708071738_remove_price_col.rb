class RemovePriceCol < ActiveRecord::Migration[7.1]
  def change
    remove_column :Myproducts, :price , :float
  end
end
