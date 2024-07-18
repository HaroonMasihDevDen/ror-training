class CreatePeople < ActiveRecord::Migration[7.1]
  def change
    create_table :people do |t|
      t.string :name
      t.integer :age
      t.boolean :go_school

      t.timestamps
    end
  end
end
