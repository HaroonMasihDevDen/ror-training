class DeleteTablePerson < ActiveRecord::Migration[7.1]
  def up
    drop_table :people
    return

  end
  def def down
    drop_table :people
  end
end
