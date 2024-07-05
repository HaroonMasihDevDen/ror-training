class RenamePersonsToPeople < ActiveRecord::Migration[7.1]
  def change
    rename_table :persons, :people
  end
end
