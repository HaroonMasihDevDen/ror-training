class ChangeDataTypeOfquantityMyProduct < ActiveRecord::Migration[7.1]
  def change
    change_column :Myproducts, :quantity, :string
   end
end
