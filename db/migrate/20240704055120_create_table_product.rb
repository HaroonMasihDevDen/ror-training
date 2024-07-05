class CreateTableProduct < ActiveRecord::Migration[7.1]
  def change
    create_table :table_products do |t|
      t.string :name
      t.integer :age
      t.timestamps
    end
  end
end
