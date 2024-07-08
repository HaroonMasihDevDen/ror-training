class ChangeDescriptionDataType < ActiveRecord::Migration[7.1]
  def change
    reversible do |direction|
      change_table :Myproducts do |t|
        direction.up {t.change :description , :text}
        direction.down {t.change :description , :string}
      end
    end
  end
end
