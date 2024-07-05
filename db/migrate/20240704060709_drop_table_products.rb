class DropTableProducts < ActiveRecord::Migration[7.1]
  def up
    drop_table :table_products
  end

  def down
    # If you want to be able to roll back the drop, you need to recreate the table
    create_table :table_products do |t|
      # Define your columns here
      t.string :name
      t.integer :age
      t.timestamps
    end
  end
end
