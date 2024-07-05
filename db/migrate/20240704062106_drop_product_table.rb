class DropProductTable < ActiveRecord::Migration[7.1]
  def up
    drop_table :product_tables
  end
  def down
    create_table :product_tables do |t|
      t.string :rollback

      t.timestamps
    end
  end
end
