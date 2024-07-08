class CreateReferenceBetweenProductAndMyproductsTable < ActiveRecord::Migration[7.1]
  def change
    add_reference :Myproducts, :articles, foreign_key: true
    end
end
