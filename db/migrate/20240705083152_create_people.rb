class CreatePeople < ActiveRecord::Migration[7.1]
  def change
    create_table :people do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
