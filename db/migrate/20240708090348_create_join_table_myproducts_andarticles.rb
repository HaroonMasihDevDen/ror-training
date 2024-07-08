class CreateJoinTableMyproductsAndarticles < ActiveRecord::Migration[7.1]
  def change
    create_join_table :Myproducts , :comments
  end
end
