class CreateCommments < ActiveRecord::Migration[7.1]
  def change
    create_table :commments do |t|
      t.string :commentor

      t.timestamps
    end
  end
end
