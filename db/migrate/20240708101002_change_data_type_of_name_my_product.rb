class ChangeDataTypeOfNameMyProduct < ActiveRecord::Migration[7.1]
  def change
    change_column :Myproducts, :name , :text
  end
end
