class SetNameNotNull < ActiveRecord::Migration[7.1]
  def change
    change_column_null :Myproducts , :description ,true
    change_column_default :Myproducts , :description ,  "this is the default value of description"
  end
end
