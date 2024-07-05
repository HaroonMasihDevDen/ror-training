class CreateProductTable < ActiveRecord::Migration[7.1]
  def change
    create_table :product_tables do |t|
      t.string :rollback

      t.timestamps
    end
  end
end
